function Rx = fun_dirsolu_trotx(x,option)
if nargin > 1 && strcmp(option, 'd')

    x = x *pi/180;
end

Rx=[1 0 0 0;0 cos(x) -sin(x) 0;0 sin(x) cos(x) 0;0 0 0 1];

end
