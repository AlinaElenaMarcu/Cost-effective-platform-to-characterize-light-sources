% Plot the LEDs in the WHITE category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% WHITE_AS7263, WHITE_LUPA, WHITE_NEXUS5X_FLASH, WHITE_STRIP

% Load WHITE LEDs variables -- ThorLabs and AS7262

WHITE_GetVariablesFromFiles;

% Normalize

WHITE_GetNormalizedValues;

% Fitting

WHITE_GetFittedValues;

%% WHITE_AS7263

% Plot fitted spectrum with data

figure(1)
subplot(2,1,1);
plot(spectrum_W1_TL_fit,wavelength_TL, spectrum_W1_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','southeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE AS7263 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_W1_AS_fit,wavelength_AS, spectrum_W1_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','southeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE AS7263 AS7262 Fitted Emission Spectrum")
saveas(gcf,'WHITE_AS7263_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_W1_TL_plot = plot(spectrum_W1_TL_fit,'b');
hold on;
spectrum_W1_AS_plot = plot(spectrum_W1_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','southeast');
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE AS7263 Emission Spectrum");
saveas(gcf,'WHITE_AS7263_Emission_Spectrum.png')

% Peak detect

spectrum_W1_TL_xData = get(spectrum_W1_TL_plot,'xData')';
spectrum_W1_TL_yData = get(spectrum_W1_TL_plot,'yData')';

spectrum_W1_AS_xData = get(spectrum_W1_AS_plot,'xData')';
spectrum_W1_AS_yData = get(spectrum_W1_AS_plot,'yData')';

[spectrum_W1_TL_peaks,locs_W1_1]=findpeaks(spectrum_W1_TL_yData,"NPeaks",2,"SortStr","descend");
[spectrum_W1_AS_peaks,locs_W1_2]=findpeaks(spectrum_W1_AS_yData,"NPeaks",2,"SortStr","descend");


figure(3)
subplot(2,1,1);
plot(spectrum_W1_TL_xData,spectrum_W1_TL_yData,spectrum_W1_TL_xData(locs_W1_1),spectrum_W1_TL_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','southeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE AS7263 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_W1_AS_xData,spectrum_W1_AS_yData,spectrum_W1_AS_xData(locs_W1_2),spectrum_W1_AS_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','southeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE AS7263 AS7262 Peaks")
saveas(gcf,'WHITE_AS7263_Peaks.png')

%% WHITE_LUPA -- WHITE Magnifying glass

% Plot fitted spectrum with data

figure(4)
subplot(2,1,1);
plot(spectrum_W2_TL_fit,wavelength_TL, spectrum_W2_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE Magnifying glass ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_W2_AS_fit,wavelength_AS, spectrum_W2_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE Magnifying glass AS7262 Fitted Emission Spectrum")
saveas(gcf,'WHITE_Magnifying glass_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(5)
spectrum_W2_TL_plot = plot(spectrum_W2_TL_fit,'b');
hold on;
spectrum_W2_AS_plot = plot(spectrum_W2_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE Magnifying glass Emission Spectrum");
saveas(gcf,'WHITE_Magnifying glass_Emission_Spectrum.png')

% Peak detect

spectrum_W2_TL_xData = get(spectrum_W2_TL_plot,'xData')';
spectrum_W2_TL_yData = get(spectrum_W2_TL_plot,'yData')';

spectrum_W2_AS_xData = get(spectrum_W2_AS_plot,'xData')';
spectrum_W2_AS_yData = get(spectrum_W2_AS_plot,'yData')';

[spectrum_W2_TL_peaks,locs_W2_1]=findpeaks(spectrum_W2_TL_yData,"NPeaks",2,"SortStr","descend");
[spectrum_W2_AS_peaks,locs_W2_2]=findpeaks(spectrum_W2_AS_yData,"NPeaks",2,"SortStr","descend");

figure(6)
subplot(2,1,1);
plot(spectrum_W2_TL_xData,spectrum_W2_TL_yData,spectrum_W2_TL_xData(locs_W2_1),spectrum_W2_TL_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE Magnifying glass ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_W2_AS_xData,spectrum_W2_AS_yData,spectrum_W2_AS_xData(locs_W2_2),spectrum_W2_AS_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE Magnifying glass AS7262 Peaks")
saveas(gcf,'WHITE_Magnifying glass_Peaks.png')

%% WHITE_NEXUS5X_FLASH

% Plot fitted spectrum with data

figure(7)
subplot(2,1,1);
plot(spectrum_W3_TL_fit,wavelength_TL, spectrum_W3_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE NEXUS5X FLASH ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_W3_AS_fit,wavelength_AS, spectrum_W3_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE NEXUS5X FLASH AS7262 Fitted Emission Spectrum")
saveas(gcf,'WHITE_NEXUS5X_FLASH_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(8)
spectrum_W3_TL_plot = plot(spectrum_W3_TL_fit,'b');
hold on;
spectrum_W3_AS_plot = plot(spectrum_W3_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE NEXUS5X FLASH Emission Spectrum");
saveas(gcf,'WHITE_NEXUS5X_FLASH_Emission_Spectrum.png')

% Peak detect

spectrum_W3_TL_xData = get(spectrum_W3_TL_plot,'xData')';
spectrum_W3_TL_yData = get(spectrum_W3_TL_plot,'yData')';

spectrum_W3_AS_xData = get(spectrum_W3_AS_plot,'xData')';
spectrum_W3_AS_yData = get(spectrum_W3_AS_plot,'yData')';

[spectrum_W3_TL_peaks,locs_W3_1]=findpeaks(spectrum_W3_TL_yData,"NPeaks",2,"SortStr","descend");
[spectrum_W3_AS_peaks,locs_W3_2]=findpeaks(spectrum_W3_AS_yData,"NPeaks",2,"SortStr","descend");

figure(9)
subplot(2,1,1);
plot(spectrum_W3_TL_xData,spectrum_W3_TL_yData,spectrum_W3_TL_xData(locs_W3_1),spectrum_W3_TL_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE NEXUS5X FLASH ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_W3_AS_xData,spectrum_W3_AS_yData,spectrum_W3_AS_xData(locs_W3_2),spectrum_W3_AS_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE NEXUS5X FLASH AS7262 Peaks")
saveas(gcf,'WHITE_NEXUS5X_FLASH_Peaks.png')

%% WHITE_STRIP

% Plot fitted spectrum with data

figure(10)
subplot(2,1,1);
plot(spectrum_WSTRIP_TL_fit,wavelength_TL, spectrum_WSTRIP_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE STRIP ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_WSTRIP_AS_fit,wavelength_AS, spectrum_WSTRIP_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE STRIP AS7262 Fitted Emission Spectrum")
saveas(gcf,'WHITE_STRIP_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(11)
spectrum_WSTRIP_TL_plot = plot(spectrum_WSTRIP_TL_fit,'b');
hold on;
spectrum_WSTRIP_AS_plot = plot(spectrum_WSTRIP_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE STRIP Emission Spectrum");
saveas(gcf,'WHITE_STRIP_Emission_Spectrum.png')

% Peak detect

spectrum_WSTRIP_TL_xData = get(spectrum_WSTRIP_TL_plot,'xData')';
spectrum_WSTRIP_TL_yData = get(spectrum_WSTRIP_TL_plot,'yData')';

spectrum_WSTRIP_AS_xData = get(spectrum_WSTRIP_AS_plot,'xData')';
spectrum_WSTRIP_AS_yData = get(spectrum_WSTRIP_AS_plot,'yData')';

[spectrum_WSTRIP_TL_peaks,locs_W4_1]=findpeaks(spectrum_WSTRIP_TL_yData,"NPeaks",3,"SortStr","descend");
[spectrum_WSTRIP_AS_peaks,locs_W4_2]=findpeaks(spectrum_WSTRIP_AS_yData,"NPeaks",3,"SortStr","descend");

figure(12)
subplot(2,1,1);
plot(spectrum_WSTRIP_TL_xData,spectrum_WSTRIP_TL_yData,spectrum_WSTRIP_TL_xData(locs_W4_1),spectrum_WSTRIP_TL_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE STRIP ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_WSTRIP_AS_xData,spectrum_WSTRIP_AS_yData,spectrum_WSTRIP_AS_xData(locs_W4_2),spectrum_WSTRIP_AS_peaks,'or')
axis([450 650 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("WHITE STRIP AS7262 Peaks")
saveas(gcf,'WHITE_STRIP_Peaks.png')
