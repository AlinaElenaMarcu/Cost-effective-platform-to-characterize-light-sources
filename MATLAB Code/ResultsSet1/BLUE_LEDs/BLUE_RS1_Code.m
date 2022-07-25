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

% Peak detect

spectrum_B1_TL_xData = get(spectrum_B1_TL_plot,'xData')';
spectrum_B1_TL_yData = get(spectrum_B1_TL_plot,'yData')';

spectrum_B1_AS_xData = get(spectrum_B1_AS_plot,'xData')';
spectrum_B1_AS_yData = get(spectrum_B1_AS_plot,'yData')';

[spectrum_B1_TL_peaks,locs_B1_1]=findpeaks(spectrum_B1_TL_yData,'MinPeakHeight', 0.3);
[spectrum_B1_AS_peaks,locs_B1_2]=findpeaks(spectrum_B1_AS_yData,'MinPeakHeight', 0.3);

figure(3)
subplot(2,1,1);
plot(spectrum_B1_TL_xData,spectrum_B1_TL_yData,spectrum_B1_TL_xData(locs_B1_1),spectrum_B1_TL_peaks,'or')
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B1_AS_xData,spectrum_B1_AS_yData,spectrum_B1_AS_xData(locs_B1_2),spectrum_B1_AS_peaks,'or')
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 AS7262 Peaks")

%% BLUE2

% Plot fitted spectrum with data

figure(1)
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

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_B2_TL_plot = plot(spectrum_B2_TL_fit,'b');
hold on;
spectrum_B2_AS_plot = plot(spectrum_B2_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE2 Emission Spectrum");

% Peak detect

spectrum_B2_TL_xData = get(spectrum_B2_TL_plot,'xData')';
spectrum_B2_TL_yData = get(spectrum_B2_TL_plot,'yData')';

spectrum_B2_AS_xData = get(spectrum_B2_AS_plot,'xData')';
spectrum_B2_AS_yData = get(spectrum_B2_AS_plot,'yData')';

[spectrum_B2_TL_peaks,locs_B2_1]=findpeaks(spectrum_B2_TL_yData,'MinPeakHeight', 0.3);
[spectrum_B2_AS_peaks,locs_B2_2]=findpeaks(spectrum_B2_AS_yData,'MinPeakHeight', 0.3);

figure(3)
subplot(2,1,1);
plot(spectrum_B2_TL_xData,spectrum_B2_TL_yData,spectrum_B2_TL_xData(locs_B2_1),spectrum_B2_TL_peaks,'or')
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE2 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B2_AS_xData,spectrum_B2_AS_yData,spectrum_B2_AS_xData(locs_B2_2),spectrum_B2_AS_peaks,'or')
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE2 AS7262 Peaks")

%% BLUE3

% Plot fitted spectrum with data

figure(1)
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

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_B3_TL_plot = plot(spectrum_B3_TL_fit,'b');
hold on;
spectrum_B3_AS_plot = plot(spectrum_B3_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE3 Emission Spectrum");

% Peak detect

spectrum_B3_TL_xData = get(spectrum_B3_TL_plot,'xData')';
spectrum_B3_TL_yData = get(spectrum_B3_TL_plot,'yData')';

spectrum_B3_AS_xData = get(spectrum_B3_AS_plot,'xData')';
spectrum_B3_AS_yData = get(spectrum_B3_AS_plot,'yData')';

[spectrum_B3_TL_peaks,locs_B3_1]=findpeaks(spectrum_B3_TL_yData,'MinPeakHeight', 0.3);
[spectrum_B3_AS_peaks,locs_B3_2]=findpeaks(spectrum_B3_AS_yData,'MinPeakHeight', 0.3);

figure(3)
subplot(2,1,1);
plot(spectrum_B3_TL_xData,spectrum_B3_TL_yData,spectrum_B3_TL_xData(locs_B3_1),spectrum_B3_TL_peaks,'or')
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE3 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B3_AS_xData,spectrum_B3_AS_yData,spectrum_B3_AS_xData(locs_B3_2),spectrum_B3_AS_peaks,'or')
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE3 AS7262 Peaks")

%% BLUE4

% Plot fitted spectrum with data

figure(1)
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

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_B4_TL_plot = plot(spectrum_B4_TL_fit,'b');
hold on;
spectrum_B4_AS_plot = plot(spectrum_B4_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE4 Emission Spectrum");

% Peak detect

spectrum_B4_TL_xData = get(spectrum_B4_TL_plot,'xData')';
spectrum_B4_TL_yData = get(spectrum_B4_TL_plot,'yData')';

spectrum_B4_AS_xData = get(spectrum_B4_AS_plot,'xData')';
spectrum_B4_AS_yData = get(spectrum_B4_AS_plot,'yData')';

[spectrum_B4_TL_peaks,locs_B4_1]=findpeaks(spectrum_B4_TL_yData,'MinPeakHeight', 0.3);
[spectrum_B4_AS_peaks,locs_B4_2]=findpeaks(spectrum_B4_AS_yData,'MinPeakHeight', 0.3);

figure(3)
subplot(2,1,1);
plot(spectrum_B4_TL_xData,spectrum_B4_TL_yData,spectrum_B4_TL_xData(locs_B4_1),spectrum_B4_TL_peaks,'or')
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE4 ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_B4_AS_xData,spectrum_B4_AS_yData,spectrum_B4_AS_xData(locs_B4_2),spectrum_B4_AS_peaks,'or')
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE4 AS7262 Peaks")

%% BLUE10


%% BLUE_AS7263


%% BLUE_ESP32


%% BLUE_STRIP




