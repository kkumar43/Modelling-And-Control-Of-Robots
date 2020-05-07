function [y] = Ja_inv(u)
%UNTITLED34 Summary of this function goes here

% Global Variables
global R
q   = u(4:end);
xd  = u(1:3);



%Calculate Jacobian.
Ja  = R.jacob0(q);
Ja  = Ja(1:3,:);


%Calculate or Pseudo Inverse
iJa = (Ja'*Ja)\Ja';
y = iJa*xd';



end

