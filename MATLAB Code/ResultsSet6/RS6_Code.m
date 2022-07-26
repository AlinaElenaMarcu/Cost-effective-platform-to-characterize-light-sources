% Plot AS7262 Spectrum - bandwidth = 40 nm
% 450, 500, 550, 570, 600, 650


gaus = @(x,mu,sig,amp,vo)amp*exp(-(((x-mu).^2)/(2*sig.^2)))+vo;
x = linspace(350,750,200);

%% 450

mu1 = 450;
sig1 = 20;
amp1 = 1;
vo1 = 0; 
y1 = gaus(x,mu1,sig1,amp1,vo1);

%% 500

mu2 = 500;
sig2 = 20;
amp2 = 1;
vo2 = 0; 
y2 = gaus(x,mu2,sig2,amp2,vo2);

%% 550

mu3 = 550;
sig3 = 20;
amp3 = 1;
vo3 = 0; 
y3 = gaus(x,mu3,sig3,amp3,vo3);

%% 570

mu4 = 570;
sig4 = 20;
amp4 = 1;
vo4 = 0; 
y4 = gaus(x,mu4,sig4,amp4,vo4);

%% 600

mu5 = 600;
sig5 = 20;
amp5 = 1;
vo5 = 0; 
y5 = gaus(x,mu5,sig5,amp5,vo5);

%% 650

mu6 = 650;
sig6 = 20;
amp6 = 1;
vo6 = 0; 
y6 = gaus(x,mu6,sig6,amp6,vo6);

%% Plot gaussian
plot(x, y1, 'Color',[0, 0.4470, 0.7410], 'LineWidth',3)
hold on;
plot(x, y2, 'Color',[0.3010, 0.7450, 0.9330], 'LineWidth',3)
hold on;
plot(x, y3, 'Color',[0.4660, 0.6740, 0.1880], 'LineWidth',3)
hold on;
plot(x, y4, 'Color',[0.4940, 0.1840, 0.5560], 'LineWidth',3)
hold on;
plot(x, y5, 'Color',[0.9290, 0.6940, 0.1250], 'LineWidth',3)
hold on;
plot(x, y6, 'r', 'LineWidth',3)
grid on;
title('Guassian')



