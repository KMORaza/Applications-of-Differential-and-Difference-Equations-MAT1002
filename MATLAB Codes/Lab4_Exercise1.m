% MATLAB code to plot charge and current as function of time 
clc
clear all
close all
%Circuit Parameters
R= 8e5; % Resistance in ohms
C= 5e-6; % Capacitance in microfarads
tau=R*C; % Circuit Time Constant 
Vco=12; % Capacitor initial Voltage at t=0
Time=0:tau/100:5*tau; % Sampling Time
Vc=Vco.*exp(-Time./tau).*heaviside(Time); 
plot(Time,Vc)
xlabel('Time (s)')
ylabel('Amplitude (V)')
title('V_C')
axis([0 5*tau 0 6])
