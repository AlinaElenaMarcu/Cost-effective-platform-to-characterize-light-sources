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
saveas(gcf,'RED1_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_R1_TL_plot = plot(spectrum_R1_TL_fit,'b');
hold on;
spectrum_R1_AS_plot = plot(spectrum_R1_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED1 Emission Spectrum");
saveas(gcf,'RED1_Emission_Spectrum.png')

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
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED1 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R1_AS_xData,spectrum_R1_AS_yData,spectrum_R1_AS_xData(locs_R1_2),spectrum_R1_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED1 AS7262 Peaks")
saveas(gcf,'RED1_Peaks.png')

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
saveas(gcf,'RED2_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(5)
spectrum_R2_TL_plot = plot(spectrum_R2_TL_fit,'b');
hold on;
spectrum_R2_AS_plot = plot(spectrum_R2_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED2 Emission Spectrum");
saveas(gcf,'RED2_Emission_Spectrum.png')

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
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED2 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R2_AS_xData,spectrum_R2_AS_yData,spectrum_R2_AS_xData(locs_R2_2),spectrum_R2_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED2 AS7262 Peaks")
saveas(gcf,'RED2_Peaks.png')

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
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 AS7262 Fitted Emission Spectrum")
saveas(gcf,'RED3_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(8)
spectrum_R3_TL_plot = plot(spectrum_R3_TL_fit,'b');
hold on;
spectrum_R3_AS_plot = plot(spectrum_R3_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 Emission Spectrum");
saveas(gcf,'RED3_Emission_Spectrum.png')

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
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R3_AS_xData,spectrum_R3_AS_yData,spectrum_R3_AS_xData(locs_R3_2),spectrum_R3_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED3 AS7262 Peaks")
saveas(gcf,'RED3_Peaks.png')

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
saveas(gcf,'RED4_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(11)
spectrum_R4_TL_plot = plot(spectrum_R4_TL_fit,'b');
hold on;
spectrum_R4_AS_plot = plot(spectrum_R4_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED4 Emission Spectrum");
saveas(gcf,'RED4_Emission_Spectrum.png')

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
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED4 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R4_AS_xData,spectrum_R4_AS_yData,spectrum_R4_AS_xData(locs_R4_2),spectrum_R4_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED4 AS7262 Peaks")
saveas(gcf,'RED4_Peaks.png')

%% RED5

% Plot fitted spectrum with data

figure(13)
subplot(2,1,1);
plot(spectrum_R5_TL_fit,wavelength_TL, spectrum_R5_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED5 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_R5_AS_fit,wavelength_AS, spectrum_R5_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED5 AS7262 Fitted Emission Spectrum")
saveas(gcf,'RED5_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(14)
spectrum_R5_TL_plot = plot(spectrum_R5_TL_fit,'b');
hold on;
spectrum_R5_AS_plot = plot(spectrum_R5_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED5 Emission Spectrum");
saveas(gcf,'RED5_Emission_Spectrum.png')

% Peak detect

spectrum_R5_TL_xData = get(spectrum_R5_TL_plot,'xData')';
spectrum_R5_TL_yData = get(spectrum_R5_TL_plot,'yData')';

spectrum_R5_AS_xData = get(spectrum_R5_AS_plot,'xData')';
spectrum_R5_AS_yData = get(spectrum_R5_AS_plot,'yData')';

[spectrum_R5_TL_peaks,locs_R5_1]=findpeaks(spectrum_R5_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_R5_AS_peaks,locs_R5_2]=findpeaks(spectrum_R5_AS_yData,"NPeaks",1,"SortStr","descend");

figure(15)
subplot(2,1,1);
plot(spectrum_R5_TL_xData,spectrum_R5_TL_yData,spectrum_R5_TL_xData(locs_R5_1),spectrum_R5_TL_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED5 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R5_AS_xData,spectrum_R5_AS_yData,spectrum_R5_AS_xData(locs_R5_2),spectrum_R5_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED5 AS7262 Peaks")
saveas(gcf,'RED5_Peaks.png')

%% RED6

% Plot fitted spectrum with data

figure(16)
subplot(2,1,1);
plot(spectrum_R6_TL_fit,wavelength_TL, spectrum_R6_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED6 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_R6_AS_fit,wavelength_AS, spectrum_R6_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED6 AS7262 Fitted Emission Spectrum")
saveas(gcf,'RED6_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(17)
spectrum_R6_TL_plot = plot(spectrum_R6_TL_fit,'b');
hold on;
spectrum_R6_AS_plot = plot(spectrum_R6_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED6 Emission Spectrum");
saveas(gcf,'RED6_Emission_Spectrum.png')

% Peak detect

spectrum_R6_TL_xData = get(spectrum_R6_TL_plot,'xData')';
spectrum_R6_TL_yData = get(spectrum_R6_TL_plot,'yData')';

spectrum_R6_AS_xData = get(spectrum_R6_AS_plot,'xData')';
spectrum_R6_AS_yData = get(spectrum_R6_AS_plot,'yData')';

[spectrum_R6_TL_peaks,locs_R6_1]=findpeaks(spectrum_R6_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_R6_AS_peaks,locs_R6_2]=findpeaks(spectrum_R6_AS_yData,"NPeaks",1,"SortStr","descend");

figure(18)
subplot(2,1,1);
plot(spectrum_R6_TL_xData,spectrum_R6_TL_yData,spectrum_R6_TL_xData(locs_R6_1),spectrum_R6_TL_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED6 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R6_AS_xData,spectrum_R6_AS_yData,spectrum_R6_AS_xData(locs_R6_2),spectrum_R6_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED6 AS7262 Peaks")
saveas(gcf,'RED6_Peaks.png')

%% RED8_KING_SRCE

% Plot fitted spectrum with data

figure(19)
subplot(2,1,1);
plot(spectrum_R8_TL_fit,wavelength_TL, spectrum_R8_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED8 KING SRCE ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_R8_AS_fit,wavelength_AS, spectrum_R8_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED8 KING SRCE AS7262 Fitted Emission Spectrum")
saveas(gcf,'RED8_KING_SRCE_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(20)
spectrum_R8_TL_plot = plot(spectrum_R8_TL_fit,'b');
hold on;
spectrum_R8_AS_plot = plot(spectrum_R8_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED8 KING SRCE Emission Spectrum");
saveas(gcf,'RED8_KING_SRCE_Emission_Spectrum.png')

% Peak detect

spectrum_R8_TL_xData = get(spectrum_R8_TL_plot,'xData')';
spectrum_R8_TL_yData = get(spectrum_R8_TL_plot,'yData')';

spectrum_R8_AS_xData = get(spectrum_R8_AS_plot,'xData')';
spectrum_R8_AS_yData = get(spectrum_R8_AS_plot,'yData')';

[spectrum_R8_TL_peaks,locs_R8_1]=findpeaks(spectrum_R8_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_R8_AS_peaks,locs_R8_2]=findpeaks(spectrum_R8_AS_yData,"NPeaks",1,"SortStr","descend");

figure(21)
subplot(2,1,1);
plot(spectrum_R8_TL_xData,spectrum_R8_TL_yData,spectrum_R8_TL_xData(locs_R8_1),spectrum_R8_TL_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED8 KING SRCE ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_R8_AS_xData,spectrum_R8_AS_yData,spectrum_R8_AS_xData(locs_R8_2),spectrum_R8_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED8 KING SRCE AS7262 Peaks")
saveas(gcf,'RED8_KING_SRCE_Peaks.png')

%% RED_RG_2THT_RED7

% Plot fitted spectrum with data

figure(22)
subplot(2,1,1);
plot(spectrum_RRG2T_TL_fit,wavelength_TL, spectrum_RRG2T_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 2THT ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_RRG2T_AS_fit,wavelength_AS, spectrum_RRG2T_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 2THT AS7262 Fitted Emission Spectrum")
saveas(gcf,'RED_RG_2THT_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(23)
spectrum_RRG2T_TL_plot = plot(spectrum_RRG2T_TL_fit,'b');
hold on;
spectrum_RRG2T_AS_plot = plot(spectrum_RRG2T_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 2THT Emission Spectrum");
saveas(gcf,'RED_RG_2THT_Emission_Spectrum.png')

% Peak detect

spectrum_RRG2T_TL_xData = get(spectrum_RRG2T_TL_plot,'xData')';
spectrum_RRG2T_TL_yData = get(spectrum_RRG2T_TL_plot,'yData')';

spectrum_RRG2T_AS_xData = get(spectrum_RRG2T_AS_plot,'xData')';
spectrum_RRG2T_AS_yData = get(spectrum_RRG2T_AS_plot,'yData')';

[spectrum_RRG2T_TL_peaks,locs_RRG2T_1]=findpeaks(spectrum_RRG2T_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_RRG2T_AS_peaks,locs_RRG2T_2]=findpeaks(spectrum_RRG2T_AS_yData,"NPeaks",1,"SortStr","descend");

figure(24)
subplot(2,1,1);
plot(spectrum_RRG2T_TL_xData,spectrum_RRG2T_TL_yData,spectrum_RRG2T_TL_xData(locs_RRG2T_1),spectrum_RRG2T_TL_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 2THT ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_RRG2T_AS_xData,spectrum_RRG2T_AS_yData,spectrum_RRG2T_AS_xData(locs_RRG2T_2),spectrum_RRG2T_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 2THT AS7262 Peaks")
saveas(gcf,'RED_RG_2THT_Peaks.png')

%% RED_RG_3THT

% Plot fitted spectrum with data

figure(25)
subplot(2,1,1);
plot(spectrum_RRG3T_TL_fit,wavelength_TL, spectrum_RRG3T_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 3THT ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_RRG3T_AS_fit,wavelength_AS, spectrum_RRG3T_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 3THT AS7262 Fitted Emission Spectrum")
saveas(gcf,'RED_RG_3THT_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(26)
spectrum_RRG3T_TL_plot = plot(spectrum_RRG3T_TL_fit,'b');
hold on;
spectrum_RRG3T_AS_plot = plot(spectrum_RRG3T_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 3THT Emission Spectrum");
saveas(gcf,'RED_RG_3THT_Emission_Spectrum.png')

% Peak detect

spectrum_RRG3T_TL_xData = get(spectrum_RRG3T_TL_plot,'xData')';
spectrum_RRG3T_TL_yData = get(spectrum_RRG3T_TL_plot,'yData')';

spectrum_RRG3T_AS_xData = get(spectrum_RRG3T_AS_plot,'xData')';
spectrum_RRG3T_AS_yData = get(spectrum_RRG3T_AS_plot,'yData')';

[spectrum_RRG3T_TL_peaks,locs_RRG3T_1]=findpeaks(spectrum_RRG3T_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_RRG3T_AS_peaks,locs_RRG3T_2]=findpeaks(spectrum_RRG3T_AS_yData,"NPeaks",1,"SortStr","descend");

figure(27)
subplot(2,1,1);
plot(spectrum_RRG3T_TL_xData,spectrum_RRG3T_TL_yData,spectrum_RRG3T_TL_xData(locs_RRG3T_1),spectrum_RRG3T_TL_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 3THT ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_RRG3T_AS_xData,spectrum_RRG3T_AS_yData,spectrum_RRG3T_AS_xData(locs_RRG3T_2),spectrum_RRG3T_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED RG 3THT AS7262 Peaks")
saveas(gcf,'RED_RG_3THT_Peaks.png')

%% RED_STRIP

% Plot fitted spectrum with data

figure(28)
subplot(2,1,1);
plot(spectrum_RSTRIP_TL_fit,wavelength_TL, spectrum_RSTRIP_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED STRIP ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_RSTRIP_AS_fit,wavelength_AS, spectrum_RSTRIP_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED STRIP AS7262 Fitted Emission Spectrum")
saveas(gcf,'RED_STRIP_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(29)
spectrum_RSTRIP_TL_plot = plot(spectrum_RSTRIP_TL_fit,'b');
hold on;
spectrum_RSTRIP_AS_plot = plot(spectrum_RSTRIP_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northwest');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED STRIP Emission Spectrum");
saveas(gcf,'RED_STRIP_Emission_Spectrum.png')

% Peak detect

spectrum_RSTRIP_TL_xData = get(spectrum_RSTRIP_TL_plot,'xData')';
spectrum_RSTRIP_TL_yData = get(spectrum_RSTRIP_TL_plot,'yData')';

spectrum_RSTRIP_AS_xData = get(spectrum_RSTRIP_AS_plot,'xData')';
spectrum_RSTRIP_AS_yData = get(spectrum_RSTRIP_AS_plot,'yData')';

[spectrum_RSTRIP_TL_peaks,locs_RSTRIP_1]=findpeaks(spectrum_RSTRIP_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_RSTRIP_AS_peaks,locs_RSTRIP_2]=findpeaks(spectrum_RSTRIP_AS_yData,"NPeaks",1,"SortStr","descend");

figure(30)
subplot(2,1,1);
plot(spectrum_RSTRIP_TL_xData,spectrum_RSTRIP_TL_yData,spectrum_RSTRIP_TL_xData(locs_RSTRIP_1),spectrum_RSTRIP_TL_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED STRIP ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_RSTRIP_AS_xData,spectrum_RSTRIP_AS_yData,spectrum_RSTRIP_AS_xData(locs_RSTRIP_2),spectrum_RSTRIP_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED STRIP AS7262 Peaks")
saveas(gcf,'RED_STRIP_Peaks.png')
