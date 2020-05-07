function [Tau_B] = Bddq(u)
% Returns Interital Torque component
global R NLinks
ddq     = u(1:NLinks);
q       = u(NLinks+1:end);
Tau_B   = R.inertia(q')*ddq;

end


