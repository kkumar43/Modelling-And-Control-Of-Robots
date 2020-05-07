function [tau] = Jtrans(u)
% Transpose Jacobian Block, input u
% and returns joint torque tau

global R

% Separate input
x = u(1:3); % End Effector Signal
q = u(4:end); % Joint Position
Ja = R.jacob0(q);
Ja = Ja(1:3,:); % Remove Rotational Velcoity from Jacobian
JaT = Ja';
tau = JaT*x;

end

