% Plot the LEDs in the YELLOW category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% YELLOW1, YELLOW2, YELLOW_STRIP

% Load YELLOW LEDs variables -- ThorLabs and AS7262

YELLOW_GetVariablesFromFiles;

% Normalize

YELLOW_GetNormalizedValues;

% Fitting

YELLOW_GetFittedValues;

%% YELLOW1

% Plot fitted spectrum with data

figure(1)
subplot(2,1,1);
plot(spectrum_Y1_TL_fit,wavelength_TL, spectrum_Y1_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW1 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_Y1_AS_fit,wavelength_AS, spectrum_Y1_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW1 AS7262 Fitted Emission Spectrum")
saveas(gcf,'YELLOW1_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_Y1_TL_plot = plot(spectrum_Y1_TL_fit,'b');
hold on;
spectrum_Y1_AS_plot = plot(spectrum_Y1_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW1 Emission Spectrum");
saveas(gcf,'YELLOW1_Emission_Spectrum.png')

% Peak detect

spectrum_Y1_TL_xData = get(spectrum_Y1_TL_plot,'xData')';
spectrum_Y1_TL_yData = get(spectrum_Y1_TL_plot,'yData')';

spectrum_Y1_AS_xData = get(spectrum_Y1_AS_plot,'xData')';
spectrum_Y1_AS_yData = get(spectrum_Y1_AS_plot,'yData')';

[spectrum_Y1_TL_peaks,locs_W1_1]=findpeaks(spectrum_Y1_TL_yData,"NPeaks",2,"SortStr","descend");
[spectrum_Y1_AS_peaks,locs_W1_2]=findpeaks(spectrum_Y1_AS_yData,"NPeaks",2,"SortStr","descend");


figure(3)
subplot(2,1,1);
plot(spectrum_Y1_TL_xData,spectrum_Y1_TL_yData,spectrum_Y1_TL_xData(locs_W1_1),spectrum_Y1_TL_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW1 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_Y1_AS_xData,spectrum_Y1_AS_yData,spectrum_Y1_AS_xData(locs_W1_2),spectrum_Y1_AS_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW1 AS7262 Peaks")
saveas(gcf,'YELLOW1_Peaks.png')

%% YELLOW2

% Plot fitted spectrum with data

figure(4)
subplot(2,1,1);
plot(spectrum_Y2_TL_fit,wavelength_TL, spectrum_Y2_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW2 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_Y2_AS_fit,wavelength_AS, spectrum_Y2_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW2 AS7262 Fitted Emission Spectrum")
saveas(gcf,'YELLOW2_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(5)
spectrum_Y2_TL_plot = plot(spectrum_Y2_TL_fit,'b');
hold on;
spectrum_Y2_AS_plot = plot(spectrum_Y2_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW2 Emission Spectrum");
saveas(gcf,'YELLOW2_Emission_Spectrum.png')

% Peak detect

spectrum_Y2_TL_xData = get(spectrum_Y2_TL_plot,'xData')';
spectrum_Y2_TL_yData = get(spectrum_Y2_TL_plot,'yData')';

spectrum_Y2_AS_xData = get(spectrum_Y2_AS_plot,'xData')';
spectrum_Y2_AS_yData = get(spectrum_Y2_AS_plot,'yData')';

[spectrum_Y2_TL_peaks,locs_Y2_1]=findpeaks(spectrum_Y2_TL_yData,"NPeaks",2,"SortStr","descend");
[spectrum_Y2_AS_peaks,locs_Y2_2]=findpeaks(spectrum_Y2_AS_yData,"NPeaks",2,"SortStr","descend");

figure(6)
subplot(2,1,1);
plot(spectrum_Y2_TL_xData,spectrum_Y2_TL_yData,spectrum_Y2_TL_xData(locs_Y2_1),spectrum_Y2_TL_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW2 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_Y2_AS_xData,spectrum_Y2_AS_yData,spectrum_Y2_AS_xData(locs_Y2_2),spectrum_Y2_AS_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW2 AS7262 Peaks")
saveas(gcf,'YELLOW2_Peaks.png')

%% YELLOW_STRIP

% Plot fitted spectrum with data

figure(7)
subplot(2,1,1);
plot(spectrum_YSTRIP_TL_fit,wavelength_TL, spectrum_YSTRIP_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW STRIP ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_YSTRIP_AS_fit,wavelength_AS, spectrum_YSTRIP_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW STRIP AS7262 Fitted Emission Spectrum")
saveas(gcf,'YELLOW_STRIP_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(8)
spectrum_YSTRIP_TL_plot = plot(spectrum_YSTRIP_TL_fit,'b');
hold on;
spectrum_YSTRIP_AS_plot = plot(spectrum_YSTRIP_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW STRIP Emission Spectrum");
saveas(gcf,'YELLOW_STRIP_Emission_Spectrum.png')

% Peak detect

spectrum_YSTRIP_TL_xData = get(spectrum_YSTRIP_TL_plot,'xData')';
spectrum_YSTRIP_TL_yData = get(spectrum_YSTRIP_TL_plot,'yData')';

spectrum_YSTRIP_AS_xData = get(spectrum_YSTRIP_AS_plot,'xData')';
spectrum_YSTRIP_AS_yData = get(spectrum_YSTRIP_AS_plot,'yData')';

[spectrum_YSTRIP_TL_peaks,locs_Y3_1]=findpeaks(spectrum_YSTRIP_TL_yData,"NPeaks",2,"SortStr","descend");
[spectrum_YSTRIP_AS_peaks,locs_Y3_2]=findpeaks(spectrum_YSTRIP_AS_yData,"NPeaks",2,"SortStr","descend");

figure(9)
subplot(2,1,1);
plot(spectrum_YSTRIP_TL_xData,spectrum_YSTRIP_TL_yData,spectrum_YSTRIP_TL_xData(locs_Y3_1),spectrum_YSTRIP_TL_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW STRIP ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_YSTRIP_AS_xData,spectrum_YSTRIP_AS_yData,spectrum_YSTRIP_AS_xData(locs_Y3_2),spectrum_YSTRIP_AS_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("YELLOW STRIP AS7262 Peaks")
saveas(gcf,'YELLOW_STRIP_Peaks.png')
