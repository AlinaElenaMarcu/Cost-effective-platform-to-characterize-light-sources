% Plot all the LEDs in the GREEN category -- GREEN1, GREEN2, GREEN3, GREEN4, 
% GREEN5_KING_SGC, GREEN_RG_2THT, GREEN_RG_3THT, GREEN_STRIP

% Load GREEN LEDs variables -- ThorLabs and AS7262

GREEN_GetVariablesFromFiles;

% Normalize

GREEN_GetNormalizedValues;

% Fitting

GREEN_GetFittedValues;

% Get xData and yData from fitted plots

GREEN_GetDatafromFittedPlots;

% Plot

figure(1)
plot(spectrum_G1_TL_xData,spectrum_G1_TL_yData,'r'); % red
hold on;
plot(spectrum_G2_TL_xData,spectrum_G2_TL_yData,'b'); % blue
hold on;
plot(spectrum_G3_TL_xData,spectrum_G3_TL_yData, 'm'); % magenta
hold on;
plot(spectrum_G4_TL_xData,spectrum_G4_TL_yData, 'k'); % black
hold on;
plot(spectrum_G5_TL_xData,spectrum_G5_TL_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_GRG2T_TL_xData,spectrum_GRG2T_TL_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
plot(spectrum_GRG3T_TL_xData,spectrum_GRG3T_TL_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_GSTRIP_TL_xData,spectrum_GSTRIP_TL_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
legend("GREEN1","GREEN2","GREEN3","GREEN4","GREEN5 KING SGC","GREEN RG 2THT","GREEN RG 3THT","GREEN STRIP");
%axis([300 700 0 inf])
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN ThorLabs Emission Spectrum ")


figure(2)
plot(spectrum_G1_AS_xData,spectrum_G1_AS_yData,'r'); % red
hold on;
plot(spectrum_G2_AS_xData,spectrum_G2_AS_yData,'b'); % blue
hold on;
plot(spectrum_G3_AS_xData,spectrum_G3_AS_yData, 'm'); % magenta
hold on;
plot(spectrum_G4_AS_xData,spectrum_G4_AS_yData, 'k'); % black
hold on;
plot(spectrum_G5_AS_xData,spectrum_G5_AS_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_GRG2T_AS_xData,spectrum_GRG2T_AS_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
plot(spectrum_GRG3T_AS_xData,spectrum_GRG3T_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_GSTRIP_AS_xData,spectrum_GSTRIP_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
legend("GREEN1","GREEN2","GREEN3","GREEN4","GREEN5 KING SGC","GREEN RG 2THT","GREEN RG 3THT","GREEN STRIP");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN AS7262 Emission Spectrum ")