%%assignment 5 (advanced math)
%The question wants us to solve a laplace equation in a rectangular domain
%subject to some particular boundary values. The user should be able to
%inut the discretization grid size as well as the size of the domain(L and
%H). Use three point central difference for the laplace equation and two
%point central difference for the boundary conditions
L = input("what is the length of the domain");
H = input("what is the Height of the domain");
grid_size = input("what is the grid size that you would like: ");

domain = nan(int16(H/grid_size)+2,int16(L/grid_size)+2);%This would only approximate since I use int()

%% defining all the boundary values:
domain(1,1:fix(L/(3*grid_size))) = 0;
domain(1,fix(L/(3*grid_size)):2*fix(L/(3*grid_size))) = 0;% some other value from neumann.
domain(1,2*fix(L/3*grid_size):end) = 10;

%% I need to make the matrix for inversion
%how can I do this in such a way that it can be used in all the different
%scales. 



