% Plot the LEDs in the RED category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% RED1, RED2, RED3, RED4, RED5, RED6, RED8_KING_SRCE, RED_RG_2THT_RED7, RED_RG_3THT, RED_STRIP

% Load RED LEDs variables -- ThorLabs and AS7262

RED_GetVariablesFromFiles;

% Normalize

RED_GetNormalizedValues;

% Fitting

RED_GetFittedValues;

%% RED1

% Plot fitted spectrum with data

figure(1)
subplot(2,1,1);
plot(spectrum_R1_TL_fit,wavelength_TL, spectrum_R1_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED1 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_R1_AS_fit,wavelength_AS, spectrum_R1_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED1 AS7262 Fitted Emission Spectrum")
% saveas(gcf,'RED1_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_R1_TL_plot = plot(spectrum_R1_TL_fit,'b');
hold on;
spectrum_R1_AS_plot = plot(spectrum_R1_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED1 Emission Spectrum");
% saveas(gcf,'RED1_Emission_Spectrum.png')

% Peak detect

spectrum_R1_TL_xData = get(spectrum_R1_TL_plot,'xData')';
spectrum_R1_TL_yData = get(spectrum_R1_TL_plot,'yData')';

spectrum_R1_AS_xData = get(spectrum_R1_AS_plot,'xData')';
spectrum_R1_AS_yData = get(spectrum_R1_AS_plot,'yData')';

[spectrum_R1_TL_peaks,locs_R1_1]=findpeaks(spectrum_R1_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_R1_AS_peaks,locs_R1_2]=findpeaks(spectrum_R1_AS_yData,"NPeaks",1,"SortStr","descend");


figure(3)
subplot(2,1,1);
plot(spectrum_R1_TL_xData,spectrum_R1_TL_yData,spectrum_R1_TL_xData(locs_R1_1),spectrum_R1_TL_peaks,'or')
axis([450 700 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED1 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R1_AS_xData,spectrum_R1_AS_yData,spectrum_R1_AS_xData(locs_R1_2),spectrum_R1_AS_peaks,'or')
axis([450 700 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED1 AS7262 Peaks")
% saveas(gcf,'RED1_Peaks.png')

%% RED2

% Plot fitted spectrum with data

figure(4)
subplot(2,1,1);
plot(spectrum_R2_TL_fit,wavelength_TL, spectrum_R2_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED2 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_R2_AS_fit,wavelength_AS, spectrum_R2_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED2 AS7262 Fitted Emission Spectrum")
% saveas(gcf,'RED2_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(5)
spectrum_R2_TL_plot = plot(spectrum_R2_TL_fit,'b');
hold on;
spectrum_R2_AS_plot = plot(spectrum_R2_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED2 Emission Spectrum");
% saveas(gcf,'RED2_Emission_Spectrum.png')

% Peak detect

spectrum_R2_TL_xData = get(spectrum_R2_TL_plot,'xData')';
spectrum_R2_TL_yData = get(spectrum_R2_TL_plot,'yData')';

spectrum_R2_AS_xData = get(spectrum_R2_AS_plot,'xData')';
spectrum_R2_AS_yData = get(spectrum_R2_AS_plot,'yData')';

[spectrum_R2_TL_peaks,locs_R2_1]=findpeaks(spectrum_R2_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_R2_AS_peaks,locs_R2_2]=findpeaks(spectrum_R2_AS_yData,"NPeaks",1,"SortStr","descend");

figure(6)
subplot(2,1,1);
plot(spectrum_R2_TL_xData,spectrum_R2_TL_yData,spectrum_R2_TL_xData(locs_R2_1),spectrum_R2_TL_peaks,'or')
axis([450 700 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED2 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R2_AS_xData,spectrum_R2_AS_yData,spectrum_R2_AS_xData(locs_R2_2),spectrum_R2_AS_peaks,'or')
axis([450 700 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED2 AS7262 Peaks")
% saveas(gcf,'RED2_Peaks.png')

%% RED3

% Plot fitted spectrum with data

figure(7)
subplot(2,1,1);
plot(spectrum_R3_TL_fit,wavelength_TL, spectrum_R3_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_R3_AS_fit,wavelength_AS, spectrum_R3_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 AS7262 Fitted Emission Spectrum")
% saveas(gcf,'RED3_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(8)
spectrum_R3_TL_plot = plot(spectrum_R3_TL_fit,'b');
hold on;
spectrum_R3_AS_plot = plot(spectrum_R3_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 Emission Spectrum");
% saveas(gcf,'RED3_Emission_Spectrum.png')

% Peak detect

spectrum_R3_TL_xData = get(spectrum_R3_TL_plot,'xData')';
spectrum_R3_TL_yData = get(spectrum_R3_TL_plot,'yData')';

spectrum_R3_AS_xData = get(spectrum_R3_AS_plot,'xData')';
spectrum_R3_AS_yData = get(spectrum_R3_AS_plot,'yData')';

[spectrum_R3_TL_peaks,locs_R3_1]=findpeaks(spectrum_R3_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_R3_AS_peaks,locs_R3_2]=findpeaks(spectrum_R3_AS_yData,"NPeaks",1,"SortStr","descend");

figure(9)
subplot(2,1,1);
plot(spectrum_R3_TL_xData,spectrum_R3_TL_yData,spectrum_R3_TL_xData(locs_R3_1),spectrum_R3_TL_peaks,'or')
axis([450 700 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R3_AS_xData,spectrum_R3_AS_yData,spectrum_R3_AS_xData(locs_R3_2),spectrum_R3_AS_peaks,'or')
axis([450 700 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 AS7262 Peaks")
% saveas(gcf,'RED3_Peaks.png')

%% RED4

% Plot fitted spectrum with data

figure(10)
subplot(2,1,1);
plot(spectrum_R4_TL_fit,wavelength_TL, spectrum_R4_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED4 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_R4_AS_fit,wavelength_AS, spectrum_R4_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED4 AS7262 Fitted Emission Spectrum")
% saveas(gcf,'RED4_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(11)
spectrum_R4_TL_plot = plot(spectrum_R4_TL_fit,'b');
hold on;
spectrum_R4_AS_plot = plot(spectrum_R4_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED4 Emission Spectrum");
% saveas(gcf,'RED4_Emission_Spectrum.png')

% Peak detect

spectrum_R4_TL_xData = get(spectrum_R4_TL_plot,'xData')';
spectrum_R4_TL_yData = get(spectrum_R4_TL_plot,'yData')';

spectrum_R4_AS_xData = get(spectrum_R4_AS_plot,'xData')';
spectrum_R4_AS_yData = get(spectrum_R4_AS_plot,'yData')';

[spectrum_R4_TL_peaks,locs_R4_1]=findpeaks(spectrum_R4_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_R4_AS_peaks,locs_R4_2]=findpeaks(spectrum_R4_AS_yData,"NPeaks",1,"SortStr","descend");

figure(12)
subplot(2,1,1);
plot(spectrum_R4_TL_xData,spectrum_R4_TL_yData,spectrum_R4_TL_xData(locs_R4_1),spectrum_R4_TL_peaks,'or')
axis([450 700 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED4 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R4_AS_xData,spectrum_R4_AS_yData,spectrum_R4_AS_xData(locs_R4_2),spectrum_R4_AS_peaks,'or')
axis([450 700 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED4 AS7262 Peaks")
% saveas(gcf,'RED4_Peaks.png')

%% RED5

%% RED6

%% RED8_KING_SRCE


%% RED_RG_2THT_RED7


%% RED_RG_3THT


%% RED_STRIP


