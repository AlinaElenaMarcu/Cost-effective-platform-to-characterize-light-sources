% Plot the LEDs in the GREEN category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% GREEN1, GREEN2, GREEN3, GREEN4, GREEN5_KING_SGC, GREEN_RG_2THT, GREEN_RG_3THT, GREEN_STRIP

% Load GREEN LEDs variables -- ThorLabs and AS7262

GREEN_GetVariablesFromFiles;

% Normalize

GREEN_GetNormalizedValues;

% Fitting

GREEN_GetFittedValues;

%% GREEN1

% Plot fitted spectrum with data

figure(1)
subplot(2,1,1);
plot(spectrum_G1_TL_fit,wavelength_TL, spectrum_G1_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN1 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_G1_AS_fit,wavelength_AS, spectrum_G1_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN1 AS7262 Fitted Emission Spectrum")
saveas(gcf,'GREEN1_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_G1_TL_plot = plot(spectrum_G1_TL_fit,'b');
hold on;
spectrum_G1_AS_plot = plot(spectrum_G1_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN1 Emission Spectrum");
saveas(gcf,'GREEN1_Emission_Spectrum.png')

% Peak detect

spectrum_G1_TL_xData = get(spectrum_G1_TL_plot,'xData')';
spectrum_G1_TL_yData = get(spectrum_G1_TL_plot,'yData')';

spectrum_G1_AS_xData = get(spectrum_G1_AS_plot,'xData')';
spectrum_G1_AS_yData = get(spectrum_G1_AS_plot,'yData')';

[spectrum_G1_TL_peaks,locs_G1_1]=findpeaks(spectrum_G1_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_G1_AS_peaks,locs_G1_2]=findpeaks(spectrum_G1_AS_yData,"NPeaks",1,"SortStr","descend");

figure(3)
subplot(2,1,1);
plot(spectrum_G1_TL_xData,spectrum_G1_TL_yData,spectrum_G1_TL_xData(locs_G1_1),spectrum_G1_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN1 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_G1_AS_xData,spectrum_G1_AS_yData,spectrum_G1_AS_xData(locs_G1_2),spectrum_G1_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN1 AS7262 Peaks")
saveas(gcf,'GREEN1_Peaks.png')

%% GREEN2

% Plot fitted spectrum with data

figure(4)
subplot(2,1,1);
plot(spectrum_G2_TL_fit,wavelength_TL, spectrum_G2_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN2 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_G2_AS_fit,wavelength_AS, spectrum_G2_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN2 AS7262 Fitted Emission Spectrum")
saveas(gcf,'GREEN2_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(5)
spectrum_G2_TL_plot = plot(spectrum_G2_TL_fit,'b');
hold on;
spectrum_G2_AS_plot = plot(spectrum_G2_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN2 Emission Spectrum");
saveas(gcf,'GREEN2_Emission_Spectrum.png')

% Peak detect

spectrum_G2_TL_xData = get(spectrum_G2_TL_plot,'xData')';
spectrum_G2_TL_yData = get(spectrum_G2_TL_plot,'yData')';

spectrum_G2_AS_xData = get(spectrum_G2_AS_plot,'xData')';
spectrum_G2_AS_yData = get(spectrum_G2_AS_plot,'yData')';

[spectrum_G2_TL_peaks,locs_G2_1]=findpeaks(spectrum_G2_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_G2_AS_peaks,locs_G2_2]=findpeaks(spectrum_G2_AS_yData,"NPeaks",1,"SortStr","descend");

figure(6)
subplot(2,1,1);
plot(spectrum_G2_TL_xData,spectrum_G2_TL_yData,spectrum_G2_TL_xData(locs_G2_1),spectrum_G2_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN2 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_G2_AS_xData,spectrum_G2_AS_yData,spectrum_G2_AS_xData(locs_G2_2),spectrum_G2_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN2 AS7262 Peaks")
saveas(gcf,'GREEN2_Peaks.png')

%% GREEN3

% Plot fitted spectrum with data

figure(7)
subplot(2,1,1);
plot(spectrum_G3_TL_fit,wavelength_TL, spectrum_G3_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN3 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_G3_AS_fit,wavelength_AS, spectrum_G3_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN3 AS7262 Fitted Emission Spectrum")
saveas(gcf,'GREEN3_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(8)
spectrum_G3_TL_plot = plot(spectrum_G3_TL_fit,'b');
hold on;
spectrum_G3_AS_plot = plot(spectrum_G3_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN3 Emission Spectrum");
saveas(gcf,'GREEN3_Emission_Spectrum.png')

% Peak detect

spectrum_G3_TL_xData = get(spectrum_G3_TL_plot,'xData')';
spectrum_G3_TL_yData = get(spectrum_G3_TL_plot,'yData')';

spectrum_G3_AS_xData = get(spectrum_G3_AS_plot,'xData')';
spectrum_G3_AS_yData = get(spectrum_G3_AS_plot,'yData')';

[spectrum_G3_TL_peaks,locs_G3_1]=findpeaks(spectrum_G3_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_G3_AS_peaks,locs_G3_2]=findpeaks(spectrum_G3_AS_yData,"NPeaks",1,"SortStr","descend");

figure(9)
subplot(2,1,1);
plot(spectrum_G3_TL_xData,spectrum_G3_TL_yData,spectrum_G3_TL_xData(locs_G3_1),spectrum_G3_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN3 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_G3_AS_xData,spectrum_G3_AS_yData,spectrum_G3_AS_xData(locs_G3_2),spectrum_G3_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN3 AS7262 Peaks")
saveas(gcf,'GREEN3_Peaks.png')

%% GREEN4

% Plot fitted spectrum with data

figure(10)
subplot(2,1,1);
plot(spectrum_G4_TL_fit,wavelength_TL, spectrum_G4_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN4 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_G4_AS_fit,wavelength_AS, spectrum_G4_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN4 AS7262 Fitted Emission Spectrum")
saveas(gcf,'GREEN4_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(11)
spectrum_G4_TL_plot = plot(spectrum_G4_TL_fit,'b');
hold on;
spectrum_G4_AS_plot = plot(spectrum_G4_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN4 Emission Spectrum");
saveas(gcf,'GREEN4_Emission_Spectrum.png')

% Peak detect

spectrum_G4_TL_xData = get(spectrum_G4_TL_plot,'xData')';
spectrum_G4_TL_yData = get(spectrum_G4_TL_plot,'yData')';

spectrum_G4_AS_xData = get(spectrum_G4_AS_plot,'xData')';
spectrum_G4_AS_yData = get(spectrum_G4_AS_plot,'yData')';

[spectrum_G4_TL_peaks,locs_G4_1]=findpeaks(spectrum_G4_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_G4_AS_peaks,locs_G4_2]=findpeaks(spectrum_G4_AS_yData,"NPeaks",1,"SortStr","descend");

figure(12)
subplot(2,1,1);
plot(spectrum_G4_TL_xData,spectrum_G4_TL_yData,spectrum_G4_TL_xData(locs_G4_1),spectrum_G4_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN4 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_G4_AS_xData,spectrum_G4_AS_yData,spectrum_G4_AS_xData(locs_G4_2),spectrum_G4_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN4 AS7262 Peaks")
saveas(gcf,'GREEN4_Peaks.png')

%% GREEN5_KING_SGC

% Plot fitted spectrum with data

figure(13)
subplot(2,1,1);
plot(spectrum_G5_TL_fit,wavelength_TL, spectrum_G5_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN5 KING SGC ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_G5_AS_fit,wavelength_AS, spectrum_G5_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN5 KING SGC AS7262 Fitted Emission Spectrum")
saveas(gcf,'GREEN5_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(14)
spectrum_G5_TL_plot = plot(spectrum_G5_TL_fit,'b');
hold on;
spectrum_G5_AS_plot = plot(spectrum_G5_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN5 KING SGC Emission Spectrum");
saveas(gcf,'GREEN5_Emission_Spectrum.png')

% Peak detect

spectrum_G5_TL_xData = get(spectrum_G5_TL_plot,'xData')';
spectrum_G5_TL_yData = get(spectrum_G5_TL_plot,'yData')';

spectrum_G5_AS_xData = get(spectrum_G5_AS_plot,'xData')';
spectrum_G5_AS_yData = get(spectrum_G5_AS_plot,'yData')';

[spectrum_G5_TL_peaks,locs_G5_1]=findpeaks(spectrum_G5_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_G5_AS_peaks,locs_G5_2]=findpeaks(spectrum_G5_AS_yData,"NPeaks",1,"SortStr","descend");

figure(15)
subplot(2,1,1);
plot(spectrum_G5_TL_xData,spectrum_G5_TL_yData,spectrum_G5_TL_xData(locs_G5_1),spectrum_G5_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN5 KING SGC ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_G5_AS_xData,spectrum_G5_AS_yData,spectrum_G5_AS_xData(locs_G5_2),spectrum_G5_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN5 KING SGC AS7262 Peaks")
saveas(gcf,'GREEN5_Peaks.png')

%% GREEN_RG_2THT

% Plot fitted spectrum with data

figure(16)
subplot(2,1,1);
plot(spectrum_GRG2T_TL_fit,wavelength_TL, spectrum_GRG2T_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 2THT ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_GRG2T_AS_fit,wavelength_AS, spectrum_GRG2T_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 2THT AS7262 Fitted Emission Spectrum")
saveas(gcf,'GREEN_RG_2THT_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(17)
spectrum_GRG2T_TL_plot = plot(spectrum_GRG2T_TL_fit,'b');
hold on;
spectrum_GRG2T_AS_plot = plot(spectrum_GRG2T_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 2THT Emission Spectrum");
saveas(gcf,'GREEN_RG_2THT_Emission_Spectrum.png')

% Peak detect

spectrum_GRG2T_TL_xData = get(spectrum_GRG2T_TL_plot,'xData')';
spectrum_GRG2T_TL_yData = get(spectrum_GRG2T_TL_plot,'yData')';

spectrum_GRG2T_AS_xData = get(spectrum_GRG2T_AS_plot,'xData')';
spectrum_GRG2T_AS_yData = get(spectrum_GRG2T_AS_plot,'yData')';

[spectrum_GRG2T_TL_peaks,locs_GRG2T_1]=findpeaks(spectrum_GRG2T_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_GRG2T_AS_peaks,locs_GRG2T_2]=findpeaks(spectrum_GRG2T_AS_yData,"NPeaks",1,"SortStr","descend");

figure(18)
subplot(2,1,1);
plot(spectrum_GRG2T_TL_xData,spectrum_GRG2T_TL_yData,spectrum_GRG2T_TL_xData(locs_GRG2T_1),spectrum_GRG2T_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 2THT ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_GRG2T_AS_xData,spectrum_GRG2T_AS_yData,spectrum_GRG2T_AS_xData(locs_GRG2T_2),spectrum_GRG2T_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 2THT AS7262 Peaks")
saveas(gcf,'GREEN_RG_2THT_Peaks.png')

%% GREEN_RG_3THT

% Plot fitted spectrum with data

figure(19)
subplot(2,1,1);
plot(spectrum_GRG3T_TL_fit,wavelength_TL, spectrum_GRG3T_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 3THT ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_GRG3T_AS_fit,wavelength_AS, spectrum_GRG3T_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 3THT AS7262 Fitted Emission Spectrum")
saveas(gcf,'GREEN_RG_3THT_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(20)
spectrum_GRG3T_TL_plot = plot(spectrum_GRG3T_TL_fit,'b');
hold on;
spectrum_GRG3T_AS_plot = plot(spectrum_GRG3T_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 3THT Emission Spectrum");
saveas(gcf,'GREEN_RG_3THT_Emission_Spectrum.png')

% Peak detect

spectrum_GRG3T_TL_xData = get(spectrum_GRG3T_TL_plot,'xData')';
spectrum_GRG3T_TL_yData = get(spectrum_GRG3T_TL_plot,'yData')';

spectrum_GRG3T_AS_xData = get(spectrum_GRG3T_AS_plot,'xData')';
spectrum_GRG3T_AS_yData = get(spectrum_GRG3T_AS_plot,'yData')';

[spectrum_GRG3T_TL_peaks,locs_GRG3T_1]=findpeaks(spectrum_GRG3T_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_GRG3T_AS_peaks,locs_GRG3T_2]=findpeaks(spectrum_GRG3T_AS_yData,"NPeaks",1,"SortStr","descend");

figure(21)
subplot(2,1,1);
plot(spectrum_GRG3T_TL_xData,spectrum_GRG3T_TL_yData,spectrum_GRG3T_TL_xData(locs_GRG3T_1),spectrum_GRG3T_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 3THT ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_GRG3T_AS_xData,spectrum_GRG3T_AS_yData,spectrum_GRG3T_AS_xData(locs_GRG3T_2),spectrum_GRG3T_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northwest');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN RG 3THT AS7262 Peaks")
saveas(gcf,'GREEN_RG_3THT_Peaks.png')

%% GREEN_STRIP

% Plot fitted spectrum with data

figure(22)
subplot(2,1,1);
plot(spectrum_GSTRIP_TL_fit,wavelength_TL, spectrum_GSTRIP_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN STRIP ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_GSTRIP_AS_fit,wavelength_AS, spectrum_GSTRIP_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN STRIP AS7262 Fitted Emission Spectrum")
saveas(gcf,'GREEN_STRIP_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(23)
spectrum_GSTRIP_TL_plot = plot(spectrum_GSTRIP_TL_fit,'b');
hold on;
spectrum_GSTRIP_AS_plot = plot(spectrum_GSTRIP_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN STRIP Emission Spectrum");
saveas(gcf,'GREEN_STRIP_Emission_Spectrum.png')

% Peak detect

spectrum_GSTRIP_TL_xData = get(spectrum_GSTRIP_TL_plot,'xData')';
spectrum_GSTRIP_TL_yData = get(spectrum_GSTRIP_TL_plot,'yData')';

spectrum_GSTRIP_AS_xData = get(spectrum_GSTRIP_AS_plot,'xData')';
spectrum_GSTRIP_AS_yData = get(spectrum_GSTRIP_AS_plot,'yData')';

[spectrum_GSTRIP_TL_peaks,locs_GSTRIP_1]=findpeaks(spectrum_GSTRIP_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_GSTRIP_AS_peaks,locs_GSTRIP_2]=findpeaks(spectrum_GSTRIP_AS_yData,"NPeaks",1,"SortStr","descend");

figure(24)
subplot(2,1,1);
plot(spectrum_GSTRIP_TL_xData,spectrum_GSTRIP_TL_yData,spectrum_GSTRIP_TL_xData(locs_GSTRIP_1),spectrum_GSTRIP_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN STRIP ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_GSTRIP_AS_xData,spectrum_GSTRIP_AS_yData,spectrum_GSTRIP_AS_xData(locs_GSTRIP_2),spectrum_GSTRIP_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("GREEN STRIP AS7262 Peaks")
saveas(gcf,'GREEN_STRIP_Peaks.png')
