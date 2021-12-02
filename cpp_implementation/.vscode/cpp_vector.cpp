#include <iostream>
#include <Eigen/Dense>
#include <cmath>

Eigen::VectorXd sigmoid(Eigen::VectorXd input){
	Eigen::VectorXd output;
	output = (1+(-1*input.array()).exp()).array().pow(-1);
	return output;
}
Eigen::VectorXd dense_layer(Eigen::VectorXd x, Eigen::Matrix[float]) 

Eigen::VectorXd R_B2I(std::float roll, std::float pitch, std::float yaw, std::float acc_x, std::float acc_y, std::float acc_z){
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
	return out;
}

Eigen::
int main(){
	Eigen::VectorXd vec;
	vec.setLinSpaced(8,0,10);
	std::cout<< vec <<std::endl;
	std::cout<< sigmoid(vec) << std::endl;
}


