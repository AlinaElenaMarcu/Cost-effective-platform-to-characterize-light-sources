% Plot all the LEDs in the YELLOW category -- YELLOW1, YELLOW2, YELLOW_STRIP

% Load YELLOW LEDs variables -- ThorLabs and AS7262

YELLOW_GetVariablesFromFiles;

% Normalize

YELLOW_GetNormalizedValues;

% Fitting

YELLOW_GetFittedValues;

% Get xData and yData from fitted plots

YELLOW_GetDatafromFittedPlots;

% Plot

figure(1)
plot(spectrum_Y1_TL_xData,spectrum_Y1_TL_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_Y2_TL_xData,spectrum_Y2_TL_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_YSTRIP_TL_xData,spectrum_YSTRIP_TL_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
legend("YELLOW1","YELLOW2","YELLOW STRIP",'NumColumns',3,'Location','southoutside');
%axis([300 700 0 inf])
% axis([450 650 0 1])
axis([450 860 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW ThorLabs Emission Spectrum")
saveas(gcf,'YELLOW_ThorLabs_Emission_Spectrum.png')

figure(2)
plot(spectrum_Y1_AS_xData,spectrum_Y1_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_Y2_AS_xData,spectrum_Y2_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_YSTRIP_AS_xData,spectrum_YSTRIP_AS_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
legend("YELLOW1","YELLOW2","YELLOW STRIP",'NumColumns',3,'Location','southoutside');
% axis([450 650 0 1])
axis([450 860 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW AS7262 Emission Spectrum")
saveas(gcf,'YELLOW_AS7262_Emission_Spectrum.png')