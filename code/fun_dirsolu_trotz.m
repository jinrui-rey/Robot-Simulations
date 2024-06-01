function Rz = fun_dirsolu_trotz(z,option)
if nargin > 1 && strcmp(option, 'd')
    z = z *pi/180;
end
Rz=[cos(z) -sin(z) 0 0;sin(z) cos(z) 0 0;0 0 1 0;0 0 0 1];
end