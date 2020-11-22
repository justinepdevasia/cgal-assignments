#include <iostream>
#include <boost/format.hpp>
// Qt headers
#include <QtGui>
#include <CGAL/Qt/GraphicsViewNavigation.h>
#include <QLineF>
#include <QRectF>
#include <QApplication> 
#include <QGraphicsScene>
#include <QGraphicsView> 
// CGAL headers
#include <CGAL/Qt/PointsGraphicsItem.h>
#include <CGAL/Qt/GraphicsViewPolylineInput.h>
#include <CGAL/Qt/utility.h>
// GraphicsView items and event filters (input classes)
#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/point_generators_2.h>
#include <CGAL/Largest_empty_iso_rectangle_2.h>
// the two base classes
#include <QString>
#include <QFileDialog>
#include <QInputDialog>
#include <QGraphicsRectItem>
#include <QGraphicsLineItem>
using namespace std;

typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef K::Point_2 Point_2;
typedef CGAL::Triangle_2<K> Triangle_2;


int main(int argc, char **argv)
{
	CGAL::Qt::PointsGraphicsItem<std::vector<Point_2> > * pgi;
	QApplication app(argc, argv);
	QGraphicsScene scene;

	// AREA OF TRIANGLE
	FILE *fp = NULL;
	fp = fopen("../src/input.txt","r");
	int pt1,pt2;
	Point_2 points[3];
	int i=0;


	// DISPLAYING TRIANGL AND ITS AREA
	QPolygonF Triangle;

	while(fscanf(fp,"%d %d",&pt1,&pt2)!=EOF){

		points[i]=Point_2(pt1,pt2);
		Triangle.append(QPointF(pt1,pt2));
		i++;

	}
	
	// finding area of triangle
	Triangle_2 pgn(points[0],points[1],points[2]);
  	double Area = abs(pgn.area());
  	cout << Area;


	scene.addPolygon(Triangle);
	QString str = QStringLiteral("Area : %1 ").arg(Area);
	scene.addText(str);

    scene.setSceneRect(0,0, 300, 300);


    QGraphicsView* view = new QGraphicsView(&scene);
    CGAL::Qt::GraphicsViewNavigation navigation;
    view->installEventFilter(&navigation);
    view->viewport()->installEventFilter(&navigation);
    view->setRenderHint(QPainter::Antialiasing);

    view->show();
	
    return app.exec();
}
