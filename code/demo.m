clear;clc;
%%
% Robot parameters
q1=pi; q2=pi/2; q3=pi/3; q4=pi/4; q5=pi/5; q6=pi/6;
Link_length = [randi([5,30],1,6)];
%%
% Forward Kinematics
T06_0par = Main_Initial();
T06_6par = Main_Initial(q1,q2,q3,q4,q5,q6);
T06_7par = Main_Initial(q1,q2,q3,q4,q5,q6,Link_length);
%%
% Visualization of Robot
Main_Visual()
%Visiual(q1,q2,q3,q4,q5,q6,Link_length)
%%
%Inverse Kinematics
Q = Main_Inverse(T06_6par);
%Q = Inverse(T06_7par);
%%
%Show the workspace
Main_Workspace();

