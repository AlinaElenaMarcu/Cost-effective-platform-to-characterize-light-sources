% Plot all the LEDs in the WHITE category -- WHITE_AS7263, WHITE_LUPA, WHITE_NEXUS5X_FLASH, WHITE_STRIP

% Load WHITE LEDs variables -- ThorLabs and AS7262

WHITE_GetVariablesFromFiles;

% Normalize

WHITE_GetNormalizedValues;

% Fitting

WHITE_GetFittedValues;

% Get xData and yData from fitted plots

WHITE_GetDatafromFittedPlot;


% Plot

figure(1)
plot(spectrum_W1_TL_xData,spectrum_W1_TL_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_W2_TL_xData,spectrum_W2_TL_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_W3_TL_xData,spectrum_W3_TL_yData, 'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_WSTRIP_TL_xData,spectrum_WSTRIP_TL_yData, 'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
legend("WHITE AS7263","WHITE Magnifying glass","WHITE NEXUS5X FLASH","WHITE STRIP",'Location','northwest');
%axis([300 700 0 inf])
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE ThorLabs Emission Spectrum")


figure(2)
plot(spectrum_W1_AS_xData,spectrum_W1_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_W2_AS_xData,spectrum_W2_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_W3_AS_xData,spectrum_W3_AS_yData, 'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_WSTRIP_AS_xData,spectrum_WSTRIP_AS_yData, 'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
legend("WHITE AS7263","WHITE Magnifying glass","WHITE NEXUS5X FLASH","WHITE STRIP",'Location','northwest');
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE AS7262 Emission Spectrum")
