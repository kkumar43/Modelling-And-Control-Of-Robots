function [xd_e] = Jadq(u)
% Function to return the (1XN) velocity
% vector using Analytical Jacobian
global R NLinks
q   = u(1:NLinks);
dq  = u(NLinks+1:end);
Ja  = R.jacob0(q);
Ja  = Ja(1:3,:); % B/c orientation doesn't matter only returns linear velocity variant
xd_e = Ja*dq;

end
