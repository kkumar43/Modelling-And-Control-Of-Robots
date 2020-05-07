function [ddq] = B_accel(u)
% Function to input a u(3*NLinksX1) matrix
% and return the joint acceleration ddq (1XNLinks)

global R NLinks

%Separate Inputs into Variables
dq = u(1:NLinks);
tau = u(NLinks+1:2*NLinks);
q = u(((2*NLinks)+1):end);
ddq = R.accel(q',dq',tau');

end

