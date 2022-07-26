% Plot the BLUE1, RED_KING, GREEN_KING LEDs ThorLabs vs AS7262 vs Datasheet

%% BLUE1

% Load BLUE1_KING variable and convert to double

% ThorLabs variable
BLUE1_KING_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE1_KING.mat');
wavelength_TL = double(BLUE1_KING_TL.wavelength_nmAir); % same for all LEDs
spectrum_B1_TL = double(BLUE1_KING_TL.spectrum);

% AS7262 variable 
BLUE1_KING_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE1_KING.mat');
wavelength_AS = double(BLUE1_KING_AS.wavelenght_AS); % same for all LEDs
spectrum_B1_AS = double(BLUE1_KING_AS.spectrum_C);

% Normalize spectrum values
spectrum_B1_TL_norm = normalize(spectrum_B1_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B1_AS_norm = normalize(spectrum_B1_AS,'norm','inf'); % AS7262 values normalized

% Fitting the spectrum values
spectrum_B1_TL_fit = fit(wavelength_TL, spectrum_B1_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE1 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B1_AS_fit = fit(wavelength_AS, spectrum_B1_AS_norm,'smoothingspline',options_BLUE1); % fitting of AS7262 normalized spectrum

% Get xData and yData from fitted plots
spectrum_B1_TL_xData = get(plot(spectrum_B1_TL_fit),'xData')';
spectrum_B1_TL_yData = get(plot(spectrum_B1_TL_fit),'yData')';

spectrum_B1_AS_xData = get(plot(spectrum_B1_AS_fit),'xData')';
spectrum_B1_AS_yData = get(plot(spectrum_B1_AS_fit),'yData')';

% Plot the emission spectrum ThorLabs vs AS7262 vs Datasheet

spectrum_B1_DT = imread("BLUE1_KING_Spectrum_Datasheet.png");


subplot(2,2,1);
plot(spectrum_B1_TL_xData,spectrum_B1_TL_yData)
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 ThorLabs Emission Spectrum")

subplot(2,2,2);
plot(spectrum_B1_AS_xData,spectrum_B1_AS_yData)
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("BLUE1 AS7262 Emission Spectrum")

subplot(2,2,[3,4]);
imshow(spectrum_B1_DT);
title("BLUE1 Datasheet Emission Spectrum")


% saveas(gcf,'BLUE1_TvAvD_Emission_Spectrum.png')




%% RED_KING



%% GREEN_KING