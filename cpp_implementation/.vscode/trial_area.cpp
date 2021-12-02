// Example program
#include <iostream>
#include <string>
#include <Eigen/Dense>

int main()
{
    roll=0;
    pitch=0;
    yaw = 0;
    acc_x =0;
    acc_y = 0;
    acc_z = 0;
    Eigen::Matrix<float, 3,3> Rx {
		{1,0,0},
		{0,cos(roll), -sin(roll)},
		{0,sin(roll), cos(roll)}
	};
	Eigen::Matrix<float, 3,3> Ry {
		{cos(pitch),0,sin(pitch)},
		{0,1,0},
		{-sin(pitch),0,cos(pitch)}
	};
	Eigen::Matrix<float,3,3> Rz{
		{cos(yaw),-sin(yaw),0},
		{sin(yaw),cos(yaw),0},
		{0,0,1}
	};
	Eigen::Vector3f v{
		{acc_x},
		{acc_y},
		{acc_z}
	} ;
	out = Rx*Ry*Rz*v;
	std::cout<< out<<std::endl;
}
