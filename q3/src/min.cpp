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
typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef K::Point_2 Point_2;
typedef K::Vector_2 Vector_2;
typedef K::Segment_2 Segment_2;
using namespace std;

struct Coords 
{ 
   int w, x, y, z; 
};




int main(int argc, char **argv)
{
	CGAL::Qt::PointsGraphicsItem<std::vector<Point_2> > * pgi;
	std::vector<Point_2> points;
	std::vector<Coords> pointList; 

	QApplication app(argc, argv);
	QGraphicsScene scene;


	FILE *fp = NULL;
	fp = fopen("../src/input.txt","r");
	int startx,starty,endx,endy;
	while(fscanf(fp,"%d %d %d %d",&startx,&starty,&endx,&endy)!=EOF){

		
		pointList.push_back({startx,starty,endx,endy});

	}
	
	for (int i=0;i<pointList.size();i++) {
		for (int j=i+1;j<pointList.size();j++) {

			scene.addLine(QLineF(pointList[i].w,pointList[i].x,pointList[i].y,pointList[i].z));
			scene.addLine(QLineF(pointList[j].w,pointList[i].x,pointList[j].y,pointList[i].z));
			scene.setSceneRect(0,0, 100, 100);

		}

	}
	

	QGraphicsView* view = new QGraphicsView(&scene);
	CGAL::Qt::GraphicsViewNavigation navigation;
	view->installEventFilter(&navigation);
	view->viewport()->installEventFilter(&navigation);
	view->setRenderHint(QPainter::Antialiasing);
	view->show();	

	
    return app.exec();
}
