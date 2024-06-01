function [X,Y,Z] = Main_Visual(q1,q2,q3,q4,q5,q6,length_list)
%Visualize the robot
%
%  Usage: Visual(q1,q2,q3,q4,q5,q6,length_list)
%
%  Parameters: q1   -   joint_1 varibale
%              q2   -   joint_2 varibale
%              q3   -   joint_3 varibale
%              q4   -   joint_4 varibale
%              q5   -   joint_5 varibale
%              q6   -   joint_6 varibale
%              length_list   -   length of each Link
%              [X,Y,Z]    -   Coordinate of each joint
%
%  Author: Jinrui (jz6578@nyu.edu)
%%

syms theta1 theta2 theta3 theta4 theta5 theta6

if nargin ~=0 && nargin~=6 && nargin~=7
    help Initial
else

if nargin==0
    theta1 = 0;
    theta2 = 0;
    theta3 = 0;
    theta4 = 0;
    theta5 = 0;
    theta6 = 0;
    l1=5;l2=5;l3=5;l4=5;l5=5;l6=5;
end

if nargin==6 || nargin ==7
    theta1 = q1;
    theta2 = q2;
    theta3 = q3;
    theta4 = q4;
    theta5 = q5;
    theta6 = q6;
    l1=5;l2=5;l3=5;l4=5;l5=5;l6=5;
    
end

if nargin == 7
    l1 = length_list(1);
    l2 = length_list(2);
    l3 = length_list(3);
    l4 = length_list(4);
    l5 = length_list(5);
    l6 = length_list(6);
end

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

T02 = T01*T12;
T03 = T02*T23;
T04 = T03*T34;
T05 = T04*T45;
T06 = T05*T56;

X = [0,T01(1,4),T02(1,4),T03(1,4),T04(1,4),T05(1,4),T06(1,4)];
Y = [0,T01(2,4),T02(2,4),T03(2,4),T04(2,4),T05(2,4),T06(2,4)];
Z = [0,T01(3,4),T02(3,4),T03(3,4),T04(3,4),T05(3,4),T06(3,4)];

plot3(X,Y,Z)
grid on

end

