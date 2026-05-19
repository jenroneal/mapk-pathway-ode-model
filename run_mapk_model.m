%% Cytoplasmic MAPK Pathway Model

% For this project, I built a small mathematical model of the cytoplasmic
% portion of the MAP kinase pathway using reaction information from the
% assigned manuscript. The goal was to simulate how pathway activation moves
% from Ras and Raf through MEK and ERK, with phosphorylated ERKpp used as
% the final model endpoint.

clc;
clear;

% Initial concentrations
y0 = [
1; % Ras
1; % Raf
0; % Ras_Raf
0; % Raf_star
1; % Raf_Pase
0; % Raf_star_Pase
1; % MEK
0; % MEKp
0; % MEKpp
1; % ERK
0; % ERKp
0; % ERKpp
];

% Time span
tspan = [0 0.05];

% Solve ODEs
[t,y] = ode45(@mapk_model, tspan, y0);

% Plot ERKpp
plot(t, y(:,12), 'LineWidth',2)

xlabel('Time')
ylabel('ERKpp Concentration')
title('MAPK Cytoplasmic Pathway Model')
grid on
