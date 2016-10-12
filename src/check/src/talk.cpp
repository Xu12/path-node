
#include "ros/ros.h"

#include "std_msgs/String.h"
#include "check/Num.h"

#include <iostream>
#include <sstream>
#include <fstream>
#include <string> 
#include <stdlib.h>

 
using namespace std;


int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "talk");

  ros::NodeHandle n;

  // geometry_msgs::PointStamped
  // geometry_msgs::Point


  ros::Publisher chatter_pub = n.advertise<geometry_msgs::PoseStamped>("chat", 20);

  ros::Rate loop_rate(50);

  int nn=1;
  int d=0; 
  
  while (nn)
  {


    geometry_msgs::PoseStamped position;
    // geometry_msgs::Point position;

    string line, number;

    ifstream f("/home/xu/path/src/check/src/UAV1.csv");
    
    if (f.fail())
    {
        cout << "Cannot open file" << endl;
        return -1;
    }


    while ( getline ( f, line, '\n' ) )  
  
    {  d++;

      // msg.data = line;

      istringstream is(line);

      int i=0; double a[3]; 

      while(std::getline(is, number, ','))

        {  
            a[i] = strtod(number.c_str(), NULL);
            i=i+1;
     }

             position.pose.position.x = a[0];
             position.pose.position.y = a[1];
             position.pose.position.z = a[2];

            // position.x = a[0];
            // position.y = a[1];
            // position.z = a[2];

         position.header.stamp=ros::Time::now();

      // ROS_INFO("%s", msg.data.c_str());

          chatter_pub.publish(position);

          ros::spinOnce();

          loop_rate.sleep(); 

        //if (de>7)
            
        //break;

          
    }
       
        nn=0;

      //if (de>7)
            
        // break;

    
  }
  
    cout << "FINISHED  " << d << endl;

  return 0;
}


