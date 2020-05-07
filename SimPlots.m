%% Plot Controller Outputs


% Set Plot to ControlPlot within GUI
ax = RobotApp.ControlPlot;
% Plot End Effecotr Position (Desired and Actual)
plot(ax,T,x_d(:,1),'r--')
hold(ax,'on')
plot(ax,T,x_d(:,2),'b--')
plot(ax,T,x_d(:,3),'g--')
plot(ax,T,x_out(:,1),'r-')
plot(ax,T,x_out(:,2),'b-')
plot(ax,T,x_out(:,3),'g-')
title('End Effector Position Mapping','interpreter','latex')
xlabel('Time (s)','interpreter','latex')
ylabel('Position','interpreter','latex')
legend('Desired X Pos','Desired Y Pos','Desired Z Pos','Actual X Pos','Actual Y Pos','Actual Z Pos','interpreter','latex')
hold(ax,'off')

