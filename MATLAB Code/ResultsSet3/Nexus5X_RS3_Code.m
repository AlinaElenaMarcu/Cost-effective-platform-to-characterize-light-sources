% Plot the Nexus5X Flash LED for all the measured gains (1, 3.7, 16, 64) --
% 2 Plots noncalibrated and calibrated values

% Load Nexus5x Flash LED variables -- AS7262

Nexus5X_GetVariablesFromFiles;

% Normalize

Nexus5X_GetNormalizedValues;

% Fitting

Nexus5X_GetFittedValues;

% Get xData and yData from fitted plots

Nexus5X_GetDatafromFittedPlot;

% Plot All Gains Calibrated values

figure(1)
plot(spectrum_G1_AS_xData,spectrum_G1_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_G3_7_AS_xData,spectrum_G3_7_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_G16_AS_xData,spectrum_G16_AS_yData, 'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_G64_AS_xData,spectrum_G64_AS_yData, 'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
legend("Gain 1","Gain 3.7","Gain 16","Gain 64",'Location','southeast');
%axis([300 700 0 inf])
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("Nexus5X Emission Spectrum - Calibrated values")
saveas(gcf,'Nexus5X_cal_Emission_Spectrum.png')



figure(2)
plot(spectrum_nG1_AS_xData,spectrum_nG1_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
plot(spectrum_nG3_7_AS_xData,spectrum_nG3_7_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_nG16_AS_xData,spectrum_nG16_AS_yData, 'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_nG64_AS_xData,spectrum_nG64_AS_yData, 'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
legend("Gain 1","Gain 3.7","Gain 16","Gain 64",'Location','southeast');
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("Nexus5X Emission Spectrum - nonCalibrated values")
saveas(gcf,'Nexus5X_noncal_Emission_Spectrum.png')