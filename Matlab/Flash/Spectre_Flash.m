%% clear workspace
clear workspace

%% Load all variables
load Vars_Flash.mat

%% Load ThorLabs variable and convert to double

FLASH = load ('Flash.mat');
wavelength_d = double(FLASH.wavelength_nmAir);
spectrum_d = double(FLASH.spectrum);

load spectrum_AS.mat
load wavelength_AS.mat

%% Normalize and fit

spectrum_TL_norm = normalize(spectrum_d,'norm','inf'); % ThorLabs values normalized
spectrum_AS_norm = normalize(spectrum_AS,'norm','inf'); % AS7262 values normalized

spectrum_TL_fit = fit(wavelength_d, spectrum_TL_norm,'smoothingspline'); %fitting of ThorLabs normalized spectrum
spectrum_AS_fit = fit(wavelength_AS, spectrum_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

%% Plot normalized spectrums

figure(1)
subplot(2,2,1);
plot(wavelength_d,spectrum_TL_norm);
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash ThorLabs Normalized spectrum");

subplot(2,2,2);
plot(wavelength_AS,spectrum_AS_norm);
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash AS7262 Normalized spectrum");

subplot(2,2,[3,4]);
plot(wavelength_d,spectrum_TL_norm,'b',wavelength_AS,spectrum_AS_norm,'r');
axis([450 650 0 inf])
legend("ThorLabs","AS7262");
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash ThorLabs and AS7262 Normalized spectrum");

%% Plot fitted spectrums with normalized spectrum

figure(2)
subplot(2,1,1);
plot(spectrum_TL_fit,wavelength_d,spectrum_TL_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash ThorLabs fitted emission spectrum ")

subplot(2,1,2);
plot(spectrum_AS_fit,wavelength_AS,spectrum_AS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash AS7262 fitted emission spectrum ")


%% Plot only fitted spectrums and detect peaks

figure(3)
TL_plot = plot(spectrum_TL_fit,'b');
hold on;
AS_plot = plot(spectrum_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262");
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash Emission spectrum");

% Peak detect

TL_xData = get(TL_plot,'xData');
TL_yData = get(TL_plot,'yData');

AS_xData = get(AS_plot,'xData');
AS_yData = get(AS_plot,'yData');


figure(4)
spectrum_TL_fit_smooth = smooth(TL_xData,'moving');
wavelength_d_smooth = smooth(TL_yData,'moving');
TL_smooth_plot = plot(spectrum_TL_fit_smooth,wavelength_d_smooth);

TL_smooth_xData = get(TL_smooth_plot,'xData');
TL_smooth_yData = get(TL_smooth_plot,'yData');

[TL_peaks,locs1]=findpeaks(TL_smooth_yData,'MinPeakHeight', 0.3);
[AS_peaks,locs2]=findpeaks(AS_yData,'MinPeakHeight', 0.5);

figure(5)
plot(TL_smooth_xData,TL_smooth_yData,TL_smooth_xData(locs1),TL_peaks,'or')
hold on;
plot(AS_xData,AS_yData,AS_xData(locs2),AS_peaks,'or')
axis([450 650 0 inf])
legend("ThorLabs","ThorLabs Peak","AS7262","AS7262 Peak");
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash Peaks")

figure(6)
subplot(2,1,1);
plot(TL_smooth_xData,TL_smooth_yData,TL_smooth_xData(locs1),TL_peaks,'or')
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash ThorLabs Peaks")

subplot(2,1,2);
plot(AS_xData,AS_yData,AS_xData(locs2),AS_peaks,'or')
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash AS7262 Peaks")

%{
[TL_peaks,locs1]=findpeaks(TL_yData,'MinPeakHeight', 0.5);
[AS_peaks,locs2]=findpeaks(AS_yData,'MinPeakHeight', 0.5);

figure(5)

plot(TL_xData,TL_yData,TL_xData(locs1),TL_peaks,'or')
hold on;
plot(AS_xData,AS_yData,AS_xData(locs2),AS_peaks,'or')
axis([450 650 0 inf])
legend("ThorLabs","ThorLabs Peak","AS7262","AS7262 Peak");
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash Peaks")


figure(6)
subplot(2,1,1);
plot(TL_xData,TL_yData,TL_xData(locs1),TL_peaks,'or')
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash ThorLabs Peaks")

subplot(2,1,2);
plot(AS_xData,AS_yData,AS_xData(locs2),AS_peaks,'or')
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Flash AS7262 Peaks")
%}


