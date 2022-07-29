% Plot the LEDs in the ORANGE category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% ORANGE1, ORANGE2, ORANGE3, ORANGE4, ORANGE5, ORANGE6

% Load ORANGE LEDs variables -- ThorLabs and AS7262

ORANGE_GetVariablesFromFiles;

% Normalize

ORANGE_GetNormalizedValues;

% Fitting

ORANGE_GetFittedValues;

%% ORANGE1

% Plot fitted spectrum with data

figure(1)
subplot(2,1,1);
plot(spectrum_O1_TL_fit,wavelength_TL, spectrum_O1_TL_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE1 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_O1_AS_fit,wavelengthC_AS, spectrum_O1_AS_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE1 AS7262 Fitted Emission Spectrum")
saveas(gcf,'ORANGE1_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_O1_TL_plot = plot(spectrum_O1_TL_fit,'b');
hold on;
spectrum_O1_AS_plot = plot(spectrum_O1_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 860 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE1 Emission Spectrum");
saveas(gcf,'ORANGE1_Emission_Spectrum.png')

% Peak detect

spectrum_O1_TL_xData = get(spectrum_O1_TL_plot,'xData')';
spectrum_O1_TL_yData = get(spectrum_O1_TL_plot,'yData')';

spectrum_O1_AS_xData = get(spectrum_O1_AS_plot,'xData')';
spectrum_O1_AS_yData = get(spectrum_O1_AS_plot,'yData')';

[spectrum_O1_TL_peaks,locs_O1_1]=findpeaks(spectrum_O1_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_O1_AS_peaks,locs_O1_2]=findpeaks(spectrum_O1_AS_yData,"NPeaks",1,"SortStr","descend");


figure(3)
subplot(2,1,1);
plot(spectrum_O1_TL_xData,spectrum_O1_TL_yData,spectrum_O1_TL_xData(locs_O1_1),spectrum_O1_TL_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE1 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_O1_AS_xData,spectrum_O1_AS_yData,spectrum_O1_AS_xData(locs_O1_2),spectrum_O1_AS_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE1 AS7262 Peaks")
saveas(gcf,'ORANGE1_Peaks.png')

%% ORANGE2

% Plot fitted spectrum with data

figure(4)
subplot(2,1,1);
plot(spectrum_O2_TL_fit,wavelength_TL, spectrum_O2_TL_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE2 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_O2_AS_fit,wavelengthC_AS, spectrum_O2_AS_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE2 AS7262 Fitted Emission Spectrum")
saveas(gcf,'ORANGE2_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(5)
spectrum_O2_TL_plot = plot(spectrum_O2_TL_fit,'b');
hold on;
spectrum_O2_AS_plot = plot(spectrum_O2_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 860 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE2 Emission Spectrum");
saveas(gcf,'ORANGE2_Emission_Spectrum.png')

% Peak detect

spectrum_O2_TL_xData = get(spectrum_O2_TL_plot,'xData')';
spectrum_O2_TL_yData = get(spectrum_O2_TL_plot,'yData')';

spectrum_O2_AS_xData = get(spectrum_O2_AS_plot,'xData')';
spectrum_O2_AS_yData = get(spectrum_O2_AS_plot,'yData')';

[spectrum_O2_TL_peaks,locs_O2_1]=findpeaks(spectrum_O2_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_O2_AS_peaks,locs_O2_2]=findpeaks(spectrum_O2_AS_yData,"NPeaks",1,"SortStr","descend");

figure(6)
subplot(2,1,1);
plot(spectrum_O2_TL_xData,spectrum_O2_TL_yData,spectrum_O2_TL_xData(locs_O2_1),spectrum_O2_TL_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE2 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_O2_AS_xData,spectrum_O2_AS_yData,spectrum_O2_AS_xData(locs_O2_2),spectrum_O2_AS_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE2 AS7262 Peaks")
saveas(gcf,'ORANGE2_Peaks.png')

%% ORANGE3

% Plot fitted spectrum with data

figure(7)
subplot(2,1,1);
plot(spectrum_O3_TL_fit,wavelength_TL, spectrum_O3_TL_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE3 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_O3_AS_fit,wavelengthC_AS, spectrum_O3_AS_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE3 AS7262 Fitted Emission Spectrum")
saveas(gcf,'ORANGE3_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(8)
spectrum_O3_TL_plot = plot(spectrum_O3_TL_fit,'b');
hold on;
spectrum_O3_AS_plot = plot(spectrum_O3_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 860 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE3 Emission Spectrum");
saveas(gcf,'ORANGE3_Emission_Spectrum.png')

% Peak detect

spectrum_O3_TL_xData = get(spectrum_O3_TL_plot,'xData')';
spectrum_O3_TL_yData = get(spectrum_O3_TL_plot,'yData')';

spectrum_O3_AS_xData = get(spectrum_O3_AS_plot,'xData')';
spectrum_O3_AS_yData = get(spectrum_O3_AS_plot,'yData')';

[spectrum_O3_TL_peaks,locs_O3_1]=findpeaks(spectrum_O3_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_O3_AS_peaks,locs_O3_2]=findpeaks(spectrum_O3_AS_yData,"NPeaks",1,"SortStr","descend");

figure(9)
subplot(2,1,1);
plot(spectrum_O3_TL_xData,spectrum_O3_TL_yData,spectrum_O3_TL_xData(locs_O3_1),spectrum_O3_TL_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE3 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_O3_AS_xData,spectrum_O3_AS_yData,spectrum_O3_AS_xData(locs_O3_2),spectrum_O3_AS_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE3 AS7262 Peaks")
saveas(gcf,'ORANGE3_Peaks.png')

%% ORANGE4

% Plot fitted spectrum with data

figure(10)
subplot(2,1,1);
plot(spectrum_O4_TL_fit,wavelength_TL, spectrum_O4_TL_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE4 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_O4_AS_fit,wavelengthC_AS, spectrum_O4_AS_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE4 AS7262 Fitted Emission Spectrum")
saveas(gcf,'ORANGE4_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(11)
spectrum_O4_TL_plot = plot(spectrum_O4_TL_fit,'b');
hold on;
spectrum_O4_AS_plot = plot(spectrum_O4_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 860 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE4 Emission Spectrum");
saveas(gcf,'ORANGE4_Emission_Spectrum.png')

% Peak detect

spectrum_O4_TL_xData = get(spectrum_O4_TL_plot,'xData')';
spectrum_O4_TL_yData = get(spectrum_O4_TL_plot,'yData')';

spectrum_O4_AS_xData = get(spectrum_O4_AS_plot,'xData')';
spectrum_O4_AS_yData = get(spectrum_O4_AS_plot,'yData')';

[spectrum_O4_TL_peaks,locs_O4_1]=findpeaks(spectrum_O4_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_O4_AS_peaks,locs_O4_2]=findpeaks(spectrum_O4_AS_yData,"NPeaks",1,"SortStr","descend");

figure(12)
subplot(2,1,1);
plot(spectrum_O4_TL_xData,spectrum_O4_TL_yData,spectrum_O4_TL_xData(locs_O4_1),spectrum_O4_TL_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE4 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_O4_AS_xData,spectrum_O4_AS_yData,spectrum_O4_AS_xData(locs_O4_2),spectrum_O4_AS_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE4 AS7262 Peaks")
saveas(gcf,'ORANGE4_Peaks.png')

%% ORANGE5

% Plot fitted spectrum with data

figure(13)
subplot(2,1,1);
plot(spectrum_O5_TL_fit,wavelength_TL, spectrum_O5_TL_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE5 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_O5_AS_fit,wavelengthC_AS, spectrum_O5_AS_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE5 AS7262 Fitted Emission Spectrum")
saveas(gcf,'ORANGE5_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(14)
spectrum_O5_TL_plot = plot(spectrum_O5_TL_fit,'b');
hold on;
spectrum_O5_AS_plot = plot(spectrum_O5_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 860 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE5 Emission Spectrum");
saveas(gcf,'ORANGE5_Emission_Spectrum.png')

% Peak detect

spectrum_O5_TL_xData = get(spectrum_O5_TL_plot,'xData')';
spectrum_O5_TL_yData = get(spectrum_O5_TL_plot,'yData')';

spectrum_O5_AS_xData = get(spectrum_O5_AS_plot,'xData')';
spectrum_O5_AS_yData = get(spectrum_O5_AS_plot,'yData')';

[spectrum_O5_TL_peaks,locs_O5_1]=findpeaks(spectrum_O5_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_O5_AS_peaks,locs_O5_2]=findpeaks(spectrum_O5_AS_yData,"NPeaks",1,"SortStr","descend");

figure(15)
subplot(2,1,1);
plot(spectrum_O5_TL_xData,spectrum_O5_TL_yData,spectrum_O5_TL_xData(locs_O5_1),spectrum_O5_TL_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE5 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_O5_AS_xData,spectrum_O5_AS_yData,spectrum_O5_AS_xData(locs_O5_2),spectrum_O5_AS_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE5 AS7262 Peaks")
saveas(gcf,'ORANGE5_Peaks.png')

%% ORANGE6

% Plot fitted spectrum with data

figure(16)
subplot(2,1,1);
plot(spectrum_O6_TL_fit,wavelength_TL, spectrum_O6_TL_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE6 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_O6_AS_fit,wavelengthC_AS, spectrum_O6_AS_norm);
axis([450 860 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE6 AS7262 Fitted Emission Spectrum")
saveas(gcf,'ORANGE6_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(17)
spectrum_O6_TL_plot = plot(spectrum_O6_TL_fit,'b');
hold on;
spectrum_O6_AS_plot = plot(spectrum_O6_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 860 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE6 Emission Spectrum");
saveas(gcf,'ORANGE6_Emission_Spectrum.png')

% Peak detect

spectrum_O6_TL_xData = get(spectrum_O6_TL_plot,'xData')';
spectrum_O6_TL_yData = get(spectrum_O6_TL_plot,'yData')';

spectrum_O6_AS_xData = get(spectrum_O6_AS_plot,'xData')';
spectrum_O6_AS_yData = get(spectrum_O6_AS_plot,'yData')';

[spectrum_O6_TL_peaks,locs_O6_1]=findpeaks(spectrum_O6_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_O6_AS_peaks,locs_O6_2]=findpeaks(spectrum_O6_AS_yData,"NPeaks",1,"SortStr","descend");

figure(18)
subplot(2,1,1);
plot(spectrum_O6_TL_xData,spectrum_O6_TL_yData,spectrum_O6_TL_xData(locs_O6_1),spectrum_O6_TL_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE6 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_O6_AS_xData,spectrum_O6_AS_yData,spectrum_O6_AS_xData(locs_O6_2),spectrum_O6_AS_peaks,'or')
axis([450 860 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ORANGE6 AS7262 Peaks")
saveas(gcf,'ORANGE6_Peaks.png')
