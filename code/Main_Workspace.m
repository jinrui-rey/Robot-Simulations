function Main_Workspace(variable_lim)
%Draw the workspace with Monte Carlo method
%
%  Usage: Workspace(q1,q2,q3,q4,q5,q6,length_list)
%
%  Parameters:
%              length_list   -  limitation of variables, a 6 by 2 matrix.
%
%  Author: Jinrui (jz6578@nyu.edu)
%%

if nargin ==0
theta1min = -360;theta1max = 360;
theta2min = -360 ;theta2max = 360 ;
theta3min = -360 ;theta3max = 360 ;
theta4min = -360;theta4max = 360;
theta5min = -360;theta5max = 360;
theta6min = -360;theta6max = 360;
else
theta1min = variable_lim(1,1);theta1max = variable_lim(1,2);
theta2min = variable_lim(2,1);theta2max = variable_lim(2,2) ;
theta3min = variable_lim(3,1);theta3max = variable_lim(3,2) ;
theta4min = variable_lim(4,1);theta4max = variable_lim(4,2);
theta5min = variable_lim(5,1);theta5max = variable_lim(5,2);
theta6min = variable_lim(6,1);theta6max = variable_lim(6,2);
end
% 
n = 30000;
x = zeros;y = zeros;z = zeros;
for i = 1:n

    theta1 = theta1min*(pi/180) + (theta1max-theta1min)*(pi/180)*rand;
    theta2 = theta2min*(pi/180) + (theta2max-theta2min)*(pi/180)*rand;
    theta3 = theta3min*(pi/180) + (theta3max-theta3min)*(pi/180)*rand;
    theta4 = theta4min*(pi/180) + (theta4max-theta4min)*(pi/180)*rand;
    theta5 = theta5min*(pi/180) + (theta5max-theta5min)*(pi/180)*rand;
    theta6 = theta6min*(pi/180) + (theta6max-theta6min)*(pi/180)*rand;

    %Tws = Initial(theta1,theta2,theta3,theta4,theta5,theta6);
    Tws = fun_Transform(theta1,theta2,theta3,theta4,theta5,theta6);
    x(i) = Tws(1,4);
    y(i) = Tws(2,4);
    z(i) = Tws(3,4);
end
figure('color',[1 1 1]);
plot3(x,y,z,'b.','MarkerSize',0.5)
hold on
xlabel('x axis','color','k','fontsize',15);
ylabel('y axis','color','k','fontsize',15);
zlabel('z axis','color','k','fontsize',15);
grid on


end