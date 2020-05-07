function [x_e] = fwdkin(q)
% Determine forward Kinematics from Joint positions
global R
Te  = R.fkine(q);
x_e  = transl(Te); 

end

