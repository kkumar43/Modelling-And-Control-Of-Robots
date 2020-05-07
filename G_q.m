function [G] = G_q(q)
% Gravitational Force
%   Input joint position (dq) to return
%   Gravity matrix G for given robot R
global R
G = R.gravload(q');

end

