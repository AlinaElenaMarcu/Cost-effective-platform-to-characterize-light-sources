% Plot the LEDs in the VIOLET category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% VIOLET

% Load VIOLET LEDs variables -- ThorLabs and AS7262

% ThorLabs variable
VIOLET_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\VIOLET_LEDs\VIOLET.mat');
wavelength_TL = double(VIOLET_TL.wavelength_nmAir); % same for all LEDs
spectrum_V_TL = double(VIOLET_TL.spectrum);

% AS7262 variable 
VIOLET_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\VIOLET_LEDs\VIOLET.mat');
wavelength_AS = double(VIOLET_AS.wavelenght_AS); % same for all LEDs
spectrum_V_AS = double(VIOLET_AS.spectrum_C);

% Normalize

spectrum_V_TL_norm = normalize(spectrum_V_TL,'norm','inf'); % ThorLabs values normalized
spectrum_V_AS_norm = normalize(spectrum_V_AS,'norm','inf'); % AS7262 values normalized

% Fitting

spectrum_V_TL_fit = fit(wavelength_TL, spectrum_V_TL_norm,'gauss6','Normalize','on'); %fitting of ThorLabs normalized spectrum
spectrum_V_AS_fit = fit(wavelength_AS, spectrum_V_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% Plot fitted spectrum with data

figure(1)
subplot(2,1,1);
plot(spectrum_V_TL_fit,wavelength_TL, spectrum_V_TL_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("VIOLET ThorLabs Fitted Emission Spectrum")

subplot(2,1,2);
plot(spectrum_V_AS_fit,wavelength_AS, spectrum_V_AS_norm);
axis([450 700 0 inf])
legend("Data","Fitted curve",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("VIOLET AS7262 Fitted Emission Spectrum")
saveas(gcf,'VIOLET_Fitted_Spectrum.png')

% Plot the emission spectrum ThorLabs vs AS7262

figure(2)
spectrum_V_TL_plot = plot(spectrum_V_TL_fit,'b');
hold on;
spectrum_V_AS_plot = plot(spectrum_V_AS_fit,'r');
hold on;
legend("ThorLabs", "AS7262",'Location','northeast');
axis([450 700 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("VIOLET Emission Spectrum");
saveas(gcf,'VIOLET_Emission_Spectrum.png')

% Peak detect

spectrum_V_TL_xData = get(spectrum_V_TL_plot,'xData')';
spectrum_V_TL_yData = get(spectrum_V_TL_plot,'yData')';

spectrum_V_AS_xData = get(spectrum_V_AS_plot,'xData')';
spectrum_V_AS_yData = get(spectrum_V_AS_plot,'yData')';

[spectrum_V_TL_peaks,locs_V1_1]=findpeaks(spectrum_V_TL_yData,"NPeaks",2,"SortStr","descend");
[spectrum_V_AS_peaks,locs_V1_2]=findpeaks(spectrum_V_AS_yData,"NPeaks",2,"SortStr","descend");


figure(3)
subplot(2,1,1);
plot(spectrum_V_TL_xData,spectrum_V_TL_yData,spectrum_V_TL_xData(locs_V1_1),spectrum_V_TL_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("VIOLET ThorLabs Peaks")

subplot(2,1,2);
plot(spectrum_V_AS_xData,spectrum_V_AS_yData,spectrum_V_AS_xData(locs_V1_2),spectrum_V_AS_peaks,'or')
axis([450 700 0 1.1])
legend("Emission Spectrum","Peak",'Location','northeast');
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("VIOLET AS7262 Peaks")
saveas(gcf,'VIOLET_Peaks.png')