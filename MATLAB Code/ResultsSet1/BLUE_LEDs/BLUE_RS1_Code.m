% Plot the LEDs in the BLUE category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% BLUE1_KING, BLUE2, BLUE3, BLUE4, BLUE10, BLUE_AS7263, BLUE_ESP32, BLUE_STRIP

% Load BLUE LEDs variables -- ThorLabs and AS7262

BLUE_GetVariblesFromFiles;

% Normalize

BLUE_GetNormalizedValues;

% Fitting

BLUE_GetFittedValues;

%% BLUE1

% Plot fitted spectrum with data

figure(1)
subplot(2,1,1);
plot(spectrum_B1_TL_fit,wavelength_TL, spectrum_B1_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_B1_AS_fit,wavelength_AS, spectrum_B1_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 AS7262 Fitted Emission Spectrum")
saveas(gcf,'BLUE1_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_B1_TL_plot = plot(spectrum_B1_TL_fit,'b');
hold on;
spectrum_B1_AS_plot = plot(spectrum_B1_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 Emission Spectrum");
saveas(gcf,'BLUE1_Emission_Spectrum.png')

% Peak detect

spectrum_B1_TL_xData = get(spectrum_B1_TL_plot,'xData')';
spectrum_B1_TL_yData = get(spectrum_B1_TL_plot,'yData')';

spectrum_B1_AS_xData = get(spectrum_B1_AS_plot,'xData')';
spectrum_B1_AS_yData = get(spectrum_B1_AS_plot,'yData')';

[spectrum_B1_TL_peaks,locs_B1_1]=findpeaks(spectrum_B1_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_B1_AS_peaks,locs_B1_2]=findpeaks(spectrum_B1_AS_yData,"NPeaks",1,"SortStr","descend");

figure(3)
subplot(2,1,1);
plot(spectrum_B1_TL_xData,spectrum_B1_TL_yData,spectrum_B1_TL_xData(locs_B1_1),spectrum_B1_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B1_AS_xData,spectrum_B1_AS_yData,spectrum_B1_AS_xData(locs_B1_2),spectrum_B1_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 AS7262 Peaks")
saveas(gcf,'BLUE1_Peaks.png')

%% BLUE2

% Plot fitted spectrum with data

figure(4)
subplot(2,1,1);
plot(spectrum_B2_TL_fit,wavelength_TL, spectrum_B2_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE2 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_B2_AS_fit,wavelength_AS, spectrum_B2_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE2 AS7262 Fitted Emission Spectrum")
saveas(gcf,'BLUE2_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(5)
spectrum_B2_TL_plot = plot(spectrum_B2_TL_fit,'b');
hold on;
spectrum_B2_AS_plot = plot(spectrum_B2_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE2 Emission Spectrum");
saveas(gcf,'BLUE2_Emission_Spectrum.png')

% Peak detect

spectrum_B2_TL_xData = get(spectrum_B2_TL_plot,'xData')';
spectrum_B2_TL_yData = get(spectrum_B2_TL_plot,'yData')';

spectrum_B2_AS_xData = get(spectrum_B2_AS_plot,'xData')';
spectrum_B2_AS_yData = get(spectrum_B2_AS_plot,'yData')';

[spectrum_B2_TL_peaks,locs_B2_1]=findpeaks(spectrum_B2_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_B2_AS_peaks,locs_B2_2]=findpeaks(spectrum_B2_AS_yData,"NPeaks",1,"SortStr","descend");

figure(6)
subplot(2,1,1);
plot(spectrum_B2_TL_xData,spectrum_B2_TL_yData,spectrum_B2_TL_xData(locs_B2_1),spectrum_B2_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE2 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B2_AS_xData,spectrum_B2_AS_yData,spectrum_B2_AS_xData(locs_B2_2),spectrum_B2_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE2 AS7262 Peaks")
saveas(gcf,'BLUE2_Peaks.png')

%% BLUE3

% Plot fitted spectrum with data

figure(7)
subplot(2,1,1);
plot(spectrum_B3_TL_fit,wavelength_TL, spectrum_B3_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE3 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_B3_AS_fit,wavelength_AS, spectrum_B3_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE3 AS7262 Fitted Emission Spectrum")
saveas(gcf,'BLUE3_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(8)
spectrum_B3_TL_plot = plot(spectrum_B3_TL_fit,'b');
hold on;
spectrum_B3_AS_plot = plot(spectrum_B3_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE3 Emission Spectrum");
saveas(gcf,'BLUE3_Emission_Spectrum.png')

% Peak detect

spectrum_B3_TL_xData = get(spectrum_B3_TL_plot,'xData')';
spectrum_B3_TL_yData = get(spectrum_B3_TL_plot,'yData')';

spectrum_B3_AS_xData = get(spectrum_B3_AS_plot,'xData')';
spectrum_B3_AS_yData = get(spectrum_B3_AS_plot,'yData')';

[spectrum_B3_TL_peaks,locs_B3_1]=findpeaks(spectrum_B3_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_B3_AS_peaks,locs_B3_2]=findpeaks(spectrum_B3_AS_yData,"NPeaks",1,"SortStr","descend");

figure(9)
subplot(2,1,1);
plot(spectrum_B3_TL_xData,spectrum_B3_TL_yData,spectrum_B3_TL_xData(locs_B3_1),spectrum_B3_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE3 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B3_AS_xData,spectrum_B3_AS_yData,spectrum_B3_AS_xData(locs_B3_2),spectrum_B3_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE3 AS7262 Peaks")
saveas(gcf,'BLUE3_Peaks.png')

%% BLUE4

% Plot fitted spectrum with data

figure(10)
subplot(2,1,1);
plot(spectrum_B4_TL_fit,wavelength_TL, spectrum_B4_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE4 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_B4_AS_fit,wavelength_AS, spectrum_B4_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE4 AS7262 Fitted Emission Spectrum")
saveas(gcf,'BLUE4_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(11)
spectrum_B4_TL_plot = plot(spectrum_B4_TL_fit,'b');
hold on;
spectrum_B4_AS_plot = plot(spectrum_B4_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE4 Emission Spectrum");
saveas(gcf,'BLUE4_Emission_Spectrum.png')

% Peak detect

spectrum_B4_TL_xData = get(spectrum_B4_TL_plot,'xData')';
spectrum_B4_TL_yData = get(spectrum_B4_TL_plot,'yData')';

spectrum_B4_AS_xData = get(spectrum_B4_AS_plot,'xData')';
spectrum_B4_AS_yData = get(spectrum_B4_AS_plot,'yData')';

[spectrum_B4_TL_peaks,locs_B4_1]=findpeaks(spectrum_B4_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_B4_AS_peaks,locs_B4_2]=findpeaks(spectrum_B4_AS_yData,"NPeaks",1,"SortStr","descend");

figure(12)
subplot(2,1,1);
plot(spectrum_B4_TL_xData,spectrum_B4_TL_yData,spectrum_B4_TL_xData(locs_B4_1),spectrum_B4_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE4 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B4_AS_xData,spectrum_B4_AS_yData,spectrum_B4_AS_xData(locs_B4_2),spectrum_B4_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE4 AS7262 Peaks")
saveas(gcf,'BLUE4_Peaks.png')

%% BLUE10

% Plot fitted spectrum with data

figure(13)
subplot(2,1,1);
plot(spectrum_B10_TL_fit,wavelength_TL, spectrum_B10_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE10 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_B10_AS_fit,wavelength_AS, spectrum_B10_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE10 AS7262 Fitted Emission Spectrum")
saveas(gcf,'BLUE10_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(14)
spectrum_B10_TL_plot = plot(spectrum_B10_TL_fit,'b');
hold on;
spectrum_B10_AS_plot = plot(spectrum_B10_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE10 Emission Spectrum");
saveas(gcf,'BLUE10_Emission_Spectrum.png')

% Peak detect

spectrum_B10_TL_xData = get(spectrum_B10_TL_plot,'xData')';
spectrum_B10_TL_yData = get(spectrum_B10_TL_plot,'yData')';

spectrum_B10_AS_xData = get(spectrum_B10_AS_plot,'xData')';
spectrum_B10_AS_yData = get(spectrum_B10_AS_plot,'yData')';

[spectrum_B10_TL_peaks,locs_B10_1]=findpeaks(spectrum_B10_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_B10_AS_peaks,locs_B10_2]=findpeaks(spectrum_B10_AS_yData,"NPeaks",1,"SortStr","descend");

figure(15)
subplot(2,1,1);
plot(spectrum_B10_TL_xData,spectrum_B10_TL_yData,spectrum_B10_TL_xData(locs_B10_1),spectrum_B10_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE10 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B10_AS_xData,spectrum_B10_AS_yData,spectrum_B10_AS_xData(locs_B10_2),spectrum_B10_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE10 AS7262 Peaks")
saveas(gcf,'BLUE10_Peaks.png')

%% BLUE_AS7263

% Plot fitted spectrum with data

figure(16)
subplot(2,1,1);
plot(spectrum_BAS7263_TL_fit,wavelength_TL, spectrum_BAS7263_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE AS7263 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_BAS7263_AS_fit,wavelength_AS, spectrum_BAS7263_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE AS7263 AS7262 Fitted Emission Spectrum")
saveas(gcf,'BLUEAS7263_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(17)
spectrum_BAS7263_TL_plot = plot(spectrum_BAS7263_TL_fit,'b');
hold on;
spectrum_BAS7263_AS_plot = plot(spectrum_BAS7263_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE AS7263 Emission Spectrum");
saveas(gcf,'BLUEAS7263_Emission_Spectrum.png')

% Peak detect

spectrum_BAS7263_TL_xData = get(spectrum_BAS7263_TL_plot,'xData')';
spectrum_BAS7263_TL_yData = get(spectrum_BAS7263_TL_plot,'yData')';

spectrum_BAS7263_AS_xData = get(spectrum_BAS7263_AS_plot,'xData')';
spectrum_BAS7263_AS_yData = get(spectrum_BAS7263_AS_plot,'yData')';

[spectrum_BAS7263_TL_peaks,locs_BAS7263_1]=findpeaks(spectrum_BAS7263_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_BAS7263_AS_peaks,locs_BAS7263_2]=findpeaks(spectrum_BAS7263_AS_yData,"NPeaks",1,"SortStr","descend");

figure(18)
subplot(2,1,1);
plot(spectrum_BAS7263_TL_xData,spectrum_BAS7263_TL_yData,spectrum_BAS7263_TL_xData(locs_BAS7263_1),spectrum_BAS7263_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE AS7263 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_BAS7263_AS_xData,spectrum_BAS7263_AS_yData,spectrum_BAS7263_AS_xData(locs_BAS7263_2),spectrum_BAS7263_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE AS7263 AS7262 Peaks")
saveas(gcf,'BLUEAS7263_Peaks.png')

%% BLUE_ESP32

% Plot fitted spectrum with data

figure(19)
subplot(2,1,1);
plot(spectrum_BESP32_TL_fit,wavelength_TL, spectrum_BESP32_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE ESP32 ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_BESP32_AS_fit,wavelength_AS, spectrum_BESP32_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE ESP32 AS7262 Fitted Emission Spectrum")
saveas(gcf,'BLUEESP32_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(20)
spectrum_BESP32_TL_plot = plot(spectrum_BESP32_TL_fit,'b');
hold on;
spectrum_BESP32_AS_plot = plot(spectrum_BESP32_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE ESP32 Emission Spectrum");
saveas(gcf,'BLUEESP32_Emission_Spectrum.png')

% Peak detect

spectrum_BESP32_TL_xData = get(spectrum_BESP32_TL_plot,'xData')';
spectrum_BESP32_TL_yData = get(spectrum_BESP32_TL_plot,'yData')';

spectrum_BESP32_AS_xData = get(spectrum_BESP32_AS_plot,'xData')';
spectrum_BESP32_AS_yData = get(spectrum_BESP32_AS_plot,'yData')';

[spectrum_BESP32_TL_peaks,locs_BESP32_1]=findpeaks(spectrum_BESP32_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_BESP32_AS_peaks,locs_BESP32_2]=findpeaks(spectrum_BESP32_AS_yData,"NPeaks",1,"SortStr","descend");

figure(21)
subplot(2,1,1);
plot(spectrum_BESP32_TL_xData,spectrum_BESP32_TL_yData,spectrum_BESP32_TL_xData(locs_BESP32_1),spectrum_BESP32_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE ESP32 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_BESP32_AS_xData,spectrum_BESP32_AS_yData,spectrum_BESP32_AS_xData(locs_BESP32_2),spectrum_BESP32_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE ESP32 AS7262 Peaks")
saveas(gcf,'BLUEESP32_Peaks.png')

%% BLUE_STRIP

% Plot fitted spectrum with data

figure(22)
subplot(2,1,1);
plot(spectrum_BSTRIP_TL_fit,wavelength_TL, spectrum_BSTRIP_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE STRIP ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_BSTRIP_AS_fit,wavelength_AS, spectrum_BSTRIP_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE STRIP AS7262 Fitted Emission Spectrum")
saveas(gcf,'BLUESTRIP_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(23)
spectrum_BSTRIP_TL_plot = plot(spectrum_BSTRIP_TL_fit,'b');
hold on;
spectrum_BSTRIP_AS_plot = plot(spectrum_BSTRIP_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE STRIP Emission Spectrum");
saveas(gcf,'BLUESTRIP_Emission_Spectrum.png')

% Peak detect

spectrum_BSTRIP_TL_xData = get(spectrum_BSTRIP_TL_plot,'xData')';
spectrum_BSTRIP_TL_yData = get(spectrum_BSTRIP_TL_plot,'yData')';

spectrum_BSTRIP_AS_xData = get(spectrum_BSTRIP_AS_plot,'xData')';
spectrum_BSTRIP_AS_yData = get(spectrum_BSTRIP_AS_plot,'yData')';

[spectrum_BSTRIP_TL_peaks,locs_BSTRIP_1]=findpeaks(spectrum_BSTRIP_TL_yData,"NPeaks",1,"SortStr","descend");
[spectrum_BSTRIP_AS_peaks,locs_BSTRIP_2]=findpeaks(spectrum_BSTRIP_AS_yData,"NPeaks",1,"SortStr","descend");

figure(24)
subplot(2,1,1);
plot(spectrum_BSTRIP_TL_xData,spectrum_BSTRIP_TL_yData,spectrum_BSTRIP_TL_xData(locs_BSTRIP_1),spectrum_BSTRIP_TL_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE STRIP ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_BSTRIP_AS_xData,spectrum_BSTRIP_AS_yData,spectrum_BSTRIP_AS_xData(locs_BSTRIP_2),spectrum_BSTRIP_AS_peaks,'or')
axis([450 650 0 1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE STRIP AS7262 Peaks")
saveas(gcf,'BLUESTRIP_Peaks.png')
