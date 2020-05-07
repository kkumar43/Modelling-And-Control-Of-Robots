function [C] = C_q(u)
% Coriolis and Centrifugal Force
%   Input joint position (q) and velocity (dq) to return
%   Coriolis Matrix C for given robot R
global R NLinks
% Separate input variable to q and dq
q = u(1:NLinks);
dq = u(NLinks+1:end);
C = R.coriolis(q',dq')*dq;
end

