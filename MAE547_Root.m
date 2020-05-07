%% MAE 547 Robotic Arm Simulation
% This is the base program that will be used to run the matlab GUI
% for the Robot Simulator
clear
clc
close all
%% Set Up
% In order to run the GUI you will need to run the robotics toolbox
% Add path from Project_Final folder to startup file
%Set toolbox to 1 if the path to robotics toolbox already exists
toolbox = 1;
if toolbox == 0
addpath(genpath('robot-9.10'));
startup_rvc
else
end

%%  Declare Global Variables used in Simulink Functions
global R mask NLinks DoF JType JLim

%% Run GUI
RobotApp = MAE457_Project_G10_v3;
AppWindow = RobotApp.RobotSimTool_G10;
