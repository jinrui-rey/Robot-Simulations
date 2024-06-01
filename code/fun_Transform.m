function T06 = Transform(theta1,theta2,theta3,theta4,theta5,theta6)

L1 = [theta1,       5,        0,     pi/2 ];
L2 = [theta2,       0,        5,     0    ];
L3 = [theta3,       5,        0,     -pi/2];
L4 = [theta4,       5,        0,     pi/2 ];
L5 = [theta5+pi/2,  5,        0,     pi/2 ];
L6 = [theta6,       0,        5,     0    ];

T01 = fun_dirsolu_sdh(L1(1),L1(2),L1(3),L1(4));
T12 = fun_dirsolu_sdh(L2(1),L2(2),L2(3),L2(4));
T23 = fun_dirsolu_sdh(L3(1),L3(2),L3(3),L3(4));
T34 = fun_dirsolu_sdh(L4(1),L4(2),L4(3),L4(4));
T45 = fun_dirsolu_sdh(L5(1),L5(2),L5(3),L5(4));
T56 = fun_dirsolu_sdh(L6(1),L6(2),L6(3),L6(4));

T06 = T01*T12*T23*T34*T45*T56;
end