% Plot all the LEDs in the VIOLET category -- VIOLET

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

spectrum_V_TL_fit = fit(wavelength_TL, spectrum_V_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_V_AS_fit = fit(wavelength_AS, spectrum_V_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% Get xData and yData from fitted plots

spectrum_V_TL_xData = get(plot(spectrum_V_TL_fit),'xData')';
spectrum_V_TL_yData = get(plot(spectrum_V_TL_fit),'yData')';

% Plot

figure(1)
plot(spectrum_V_TL_xData,spectrum_V_TL_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
legend("VIOLET",'Location','northwest');
%axis([300 700 0 inf])
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED ThorLabs Emission Spectrum")


figure(2)
plot(spectrum_V_AS_xData,spectrum_V_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
legend("VIOLET",'Location','northwest');
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("RED AS7262 Emission Spectrum")
