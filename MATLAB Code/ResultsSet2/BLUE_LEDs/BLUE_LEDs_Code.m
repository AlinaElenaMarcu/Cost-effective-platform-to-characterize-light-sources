% Plot all the LEDs in the BLUE category -- BLUE1_KING, BLUE2, BLUE3, BLUE4, 
% BLUE10, BLUE_AS7263, BLUE_ESP32, BLUE_STRIP

% Load BLUE LEDs variables -- ThorLabs and AS7262

BLUE_GetVariblesFromFiles;

% Normalize

BLUE_GetNormalizedValues;

% Fitting

BLUE_GetFittedValues;

% Get xData and yData from fitted plots

BLUE_GetDatafromFittedPlots;

% Plot

figure(1)
plot(spectrum_B1_TL_xData,spectrum_B1_TL_yData,'r'); % red
hold on;
plot(spectrum_B2_TL_xData,spectrum_B2_TL_yData,'b'); % blue
hold on;
plot(spectrum_B3_TL_xData,spectrum_B3_TL_yData, 'm'); % magenta
hold on;
plot(spectrum_B4_TL_xData,spectrum_B4_TL_yData, 'k'); % black
hold on;
plot(spectrum_B10_TL_xData,spectrum_B10_TL_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_BAS7263_TL_xData,spectrum_BAS7263_TL_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
plot(spectrum_BESP32_TL_xData,spectrum_BESP32_TL_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_BSTRIP_TL_xData,spectrum_BSTRIP_TL_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
legend("BLUE1 KING","BLUE2","BLUE3","BLUE4","BLUE10","BLUE AS7263","BLUE ESP32","BLUE STRIP");
%axis([300 700 0 inf])
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE ThorLabs Emission Spectrum")


figure(2)
plot(spectrum_B1_AS_xData,spectrum_B1_AS_yData,'r'); % red
hold on;
plot(spectrum_B2_AS_xData,spectrum_B2_AS_yData,'b'); % blue
hold on;
plot(spectrum_B3_AS_xData,spectrum_B3_AS_yData, 'm'); % magenta
hold on;
plot(spectrum_B4_AS_xData,spectrum_B4_AS_yData, 'k'); % black
hold on;
plot(spectrum_B10_AS_xData,spectrum_B10_AS_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_BAS7263_AS_xData,spectrum_BAS7263_AS_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
plot(spectrum_BESP32_AS_xData,spectrum_BESP32_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_BSTRIP_AS_xData,spectrum_BSTRIP_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
legend("BLUE1 KING","BLUE2","BLUE3","BLUE4","BLUE10","BLUE AS7263","BLUE ESP32","BLUE STRIP");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE AS7262 Emission Spectrum")




