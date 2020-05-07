function [xdd_e] = dJacobA(u)
% Returns the (6X1) derivative of the Jacobian
% with an input of q (1XN) and dq (1XN)
%Global Variables Used
global R NLinks

q       = u(1:NLinks); %Joint Position
dq      = u(NLinks+1:end); % Joint Velocity
assignin('base','uc',u)
assignin('base','qc',q)
assignin('base','qc',q)
jdq     = R.jacob_dot(q',dq'); %Jacobian Derivative
assignin('base','Jacd',jdq)
jdq     = jdq(1:3,:);
xdd_e   = jdq'; % End Effector Acceleration
assignin('base','xddc',xdd_e)

end

