function [Fv] = Fv_dq(qd)
% Calculates the Friction Torque of Robot
global R
Fv = R.friction(qd');
end

