function T = fun_dirsolu_mdh(theta,d,a,alpha)
T = fun_dirsolu_trotx(alpha)*fun_dirsolu_transl(a,0,0)*fun_dirsolu_trotz(theta)*fun_dirsolu_transl(0,0,d);
end