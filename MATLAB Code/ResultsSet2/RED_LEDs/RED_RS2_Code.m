% Plot all the LEDs in the RED category -- RED1, RED2, RED3, RED4, RED5,
% RED6, RED8_KING_SRCE, RED_RG_2THT_RED7, RED_RG_3THT, RED_STRIP

% Load RED LEDs variables -- ThorLabs and AS7262

RED_GetVariablesFromFiles;

% Normalize

RED_GetNormalizedValues;

% Fitting

RED_GetFittedValues;

% Get xData and yData from fitted plots

RED_GetDataFromFittedPlots;

% Plot

figure(1)
plot(spectrum_R1_TL_xData,spectrum_R1_TL_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_R2_TL_xData,spectrum_R2_TL_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_R3_TL_xData,spectrum_R3_TL_yData, 'm'); % magenta
hold on;
plot(spectrum_R4_TL_xData,spectrum_R4_TL_yData, 'Color',[0.9290, 0.6940, 0.1250]); % #EDB120 color
hold on;
plot(spectrum_R5_TL_xData,spectrum_R5_TL_yData,'Color',[0.3010, 0.7450, 0.9330]); % #4DBEEE color
hold on;
plot(spectrum_R6_TL_xData,spectrum_R6_TL_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
plot(spectrum_R8_TL_xData,spectrum_R8_TL_yData, 'r'); % red
hold on;
plot(spectrum_RRG2T_TL_xData,spectrum_RRG2T_TL_yData, 'k'); % black color
hold on;
plot(spectrum_RRG3T_TL_xData,spectrum_RRG3T_TL_yData,'Color',[0.8500, 0.3250, 0.0980]); % #D95319 color
hold on;
plot(spectrum_RSTRIP_TL_xData,spectrum_RSTRIP_TL_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
legend("RED1","RED2","RED3","RED4","RED5","RED6","RED8 KING SRCE","RED RG 2THT","RED RG 3THT","RED STRIP",'Location','northwest');
%axis([300 700 0 inf])
axis([450 860 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED ThorLabs Emission Spectrum")
% saveas(gcf,'RED1_ThorLabs_Emission_Spectrum.png')


figure(2)
plot(spectrum_R1_AS_xData,spectrum_R1_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_R2_AS_xData,spectrum_R2_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_R3_AS_xData,spectrum_R3_AS_yData, 'm'); % magenta
hold on;
plot(spectrum_R4_AS_xData,spectrum_R4_AS_yData, 'Color',[0.9290, 0.6940, 0.1250]); % #EDB120 color
hold on;
plot(spectrum_R5_AS_xData,spectrum_R5_AS_yData,'Color',[0.3010, 0.7450, 0.9330]); % #4DBEEE color
hold on;
plot(spectrum_R6_AS_xData,spectrum_R6_AS_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
plot(spectrum_R8_AS_xData,spectrum_R8_AS_yData, 'r'); % red
hold on;
plot(spectrum_RRG2T_AS_xData,spectrum_RRG2T_AS_yData, 'k'); % black color
hold on;
plot(spectrum_RRG3T_AS_xData,spectrum_RRG3T_AS_yData,'Color',[0.8500, 0.3250, 0.0980]); % #D95319 color
hold on;
plot(spectrum_RSTRIP_AS_xData,spectrum_RSTRIP_AS_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
legend("RED1","RED2","RED3","RED4","RED5","RED6","RED8 KING SRCE","RED RG 2THT","RED RG 3THT","RED STRIP",'Location','northwest');
% axis([450 700 0 1])
axis([450 860 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED AS7262 Emission Spectrum")
% saveas(gcf,'RED1_AS7262_Emission_Spectrum.png')
