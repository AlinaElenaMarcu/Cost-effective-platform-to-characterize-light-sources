% Plot all the LEDs in the ORANGE category -- ORANGE1, ORANGE2, ORANGE3, 
% ORANGE4, ORANGE5, ORANGE6

% Load ORANGE LEDs variables -- ThorLabs and AS7262

ORANGE_GetVariablesFromFiles;

% Normalize

ORANGE_GetNormalizedValues;

% Fitting

ORANGE_GetFittedValues;

% Get xData and yData from fitted plots

ORANGE_GetDatafromFittedPlots;

% Plot

figure(1)
plot(spectrum_O1_TL_xData,spectrum_O1_TL_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_O2_TL_xData,spectrum_O2_TL_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_O3_TL_xData,spectrum_O3_TL_yData, 'm'); % magenta
hold on;
plot(spectrum_O4_TL_xData,spectrum_O4_TL_yData, 'k'); % black
hold on;
plot(spectrum_O5_TL_xData,spectrum_O5_TL_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_O6_TL_xData,spectrum_O6_TL_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
legend("ORANGE1","ORANGE2","ORANGE3","ORANGE4","ORANGE5","ORANGE6",'Location','northwest');
%axis([300 700 0 inf])
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE ThorLabs Emission Spectrum")


figure(2)
plot(spectrum_O1_AS_xData,spectrum_O1_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_O2_AS_xData,spectrum_O2_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_O3_AS_xData,spectrum_O3_AS_yData, 'm'); % magenta
hold on;
plot(spectrum_O4_AS_xData,spectrum_O4_AS_yData, 'k'); % black
hold on;
plot(spectrum_O5_AS_xData,spectrum_O5_AS_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_O6_AS_xData,spectrum_O6_AS_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
legend("ORANGE1","ORANGE2","ORANGE3","ORANGE4","ORANGE5","ORANGE6",'Location','northwest');
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE AS7262 Emission Spectrum")
