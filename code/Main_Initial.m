function T06 = Main_Initial(q1,q2,q3,q4,q5,q6,length_list)
% Initialize the robot and compute forward kinematics
%
%  Usage: T06 = Initial(q1,q2,q3,q4,q5,q6,length_list)
%
%  Parameters: q1   -   joint_1 varibale
%              q2   -   joint_2 varibale
%              q3   -   joint_3 varibale
%              q4   -   joint_4 varibale
%              q5   -   joint_5 varibale
%              q6   -   joint_6 varibale
%              length_list    -length of each Link
%              T06  -   Transformation matrix
%
%  Author: Jinrui (jz6578@nyu.edu)
%%
% Initial input parameters
syms theta1 theta2 theta3 theta4 theta5 theta6
syms l1 l2 l3 l4 l5 l6

if nargin ~=0 && nargin~=6 && nargin~=7
    help Initial
else

%Initialize the variables to input values
if nargin==6 || nargin ==7
    theta1 = q1;
    theta2 = q2;
    theta3 = q3;
    theta4 = q4;
    theta5 = q5;
    theta6 = q6;
    l1=5;l2=5;l3=5;l4=5;l5=5;l6=5;
end
%Initialize the length of Links to input values
if nargin == 7
    l1 = length_list(1);
    l2 = length_list(2);
    l3 = length_list(3);
    l4 = length_list(4);
    l5 = length_list(5);
    l6 = length_list(6);
end

%%
% Initial DH parameters of each Link, Where L = [theta,d,a,alpha]
L1 = [theta1,       l1,        0,     pi/2 ];
L2 = [theta2,       0,        l2,     0    ];
L3 = [theta3,       l3,        0,     -pi/2];
L4 = [theta4,       l4,        0,     pi/2 ];
L5 = [theta5+pi/2,  l5,        0,     pi/2 ];
L6 = [theta6,       0,        l6,     0    ];

T01 = fun_dirsolu_sdh(L1(1),L1(2),L1(3),L1(4));
T12 = fun_dirsolu_sdh(L2(1),L2(2),L2(3),L2(4));
T23 = fun_dirsolu_sdh(L3(1),L3(2),L3(3),L3(4));
T34 = fun_dirsolu_sdh(L4(1),L4(2),L4(3),L4(4));
T45 = fun_dirsolu_sdh(L5(1),L5(2),L5(3),L5(4));
T56 = fun_dirsolu_sdh(L6(1),L6(2),L6(3),L6(4));

T06 = T01*T12*T23*T34*T45*T56;
end