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

figure(1)
subplot(2,2,1);
plot(spectrum_B1_TL_xData,spectrum_B1_TL_yData)
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ThorLabs")

subplot(2,2,2);
plot(spectrum_B1_AS_xData,spectrum_B1_AS_yData)
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("AS7262")

subplot(2,2,[3,4]);
imshow(spectrum_B1_DT);
title("Datasheet")

sgtitle('BLUE Kingbright Emission Spectrum')

saveas(gcf,'BLUE_TvAvD_Emission_Spectrum.png')

%% RED_KING

% Load RED8_KING_SRCE variable and convert to double

% ThorLabs variable
RED8_KING_SRCE_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED8_KING_SRCE.mat');
spectrum_R8_TL = double(RED8_KING_SRCE_TL.spectrum);

% AS7262 variable - VIS
RED8_KING_SRCE_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED8_KING_SRCE.mat');
spectrum_R8V_AS = double(RED8_KING_SRCE_AS.spectrum_C);

% AS7262 variable - NIR
RED8_KING_SRCE_NIR_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED8_KING_SRCE_NIR.mat');
spectrum_R8N_AS = double(RED8_KING_SRCE_NIR_AS.spectrum_C);

% AS7262 variable - VIS+NIR
load("wavelengthC_AS.mat")
spectrum_R8_AS = [spectrum_R8V_AS(1:5);spectrum_R8N_AS(1);spectrum_R8V_AS(6);spectrum_R8N_AS(2:6)];

% Normalize spectrum values
spectrum_R8_TL_norm = normalize(spectrum_R8_TL,'norm','inf'); % ThorLabs values normalized
spectrum_R8_AS_norm = normalize(spectrum_R8_AS,'norm','inf'); % AS7262 values normalized

% Fitting the spectrum values
spectrum_R8_TL_fit = fit(wavelength_TL, spectrum_R8_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_R8_AS_fit = fit(wavelengthC_AS, spectrum_R8_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% Get xData and yData from fitted plots
spectrum_R8_TL_xData = get(plot(spectrum_R8_TL_fit),'xData')';
spectrum_R8_TL_yData = get(plot(spectrum_R8_TL_fit),'yData')';

spectrum_R8_AS_xData = get(plot(spectrum_R8_AS_fit),'xData')';
spectrum_R8_AS_yData = get(plot(spectrum_R8_AS_fit),'yData')';

% Plot the emission spectrum ThorLabs vs AS7262 vs Datasheet

spectrum_R8_DT = imread("RED_KING_Spectrum_Datasheet.png");

figure(2)
subplot(2,2,1);
plot(spectrum_R8_TL_xData,spectrum_R8_TL_yData)
axis([450 730 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ThorLabs")

subplot(2,2,2);
plot(spectrum_R8_AS_xData,spectrum_R8_AS_yData)
axis([450 730 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("AS7262")

subplot(2,2,[3,4]);
imshow(spectrum_R8_DT);
title("Datasheet")

sgtitle('RED Kingbright Emission Spectrum')

saveas(gcf,'RED_TvAvD_Emission_Spectrum.png')

%% GREEN_KING

% Load GREEN5_KING_SGC variable and convert to double

% ThorLabs variable
GREEN5_KING_SGC_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN5_KING_SGC.mat');
spectrum_G5_TL = double(GREEN5_KING_SGC_TL.spectrum);

% AS7262 variable 
GREEN5_KING_SGC_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN5_KING_SGC.mat');
spectrum_G5_AS = double(GREEN5_KING_SGC_AS.spectrum_C);

% Normalize spectrum values
spectrum_G5_TL_norm = normalize(spectrum_G5_TL,'norm','inf'); % ThorLabs values normalized
spectrum_G5_AS_norm = normalize(spectrum_G5_AS,'norm','inf'); % AS7262 values normalized

% Fitting the spectrum values
spectrum_G5_TL_fit = fit(wavelength_TL, spectrum_G5_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_G5_AS_fit = fit(wavelength_AS, spectrum_G5_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% Get xData and yData from fitted plots
spectrum_G5_TL_xData = get(plot(spectrum_G5_TL_fit),'xData')';
spectrum_G5_TL_yData = get(plot(spectrum_G5_TL_fit),'yData')';

spectrum_G5_AS_xData = get(plot(spectrum_G5_AS_fit),'xData')';
spectrum_G5_AS_yData = get(plot(spectrum_G5_AS_fit),'yData')';

% Plot the emission spectrum ThorLabs vs AS7262 vs Datasheet

spectrum_G5_DT = imread("GREEN_KING_Spectrum_Datasheet.png");

figure(3)
subplot(2,2,1);
plot(spectrum_G5_TL_xData,spectrum_G5_TL_yData)
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ThorLabs")

subplot(2,2,2);
plot(spectrum_G5_AS_xData,spectrum_G5_AS_yData)
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("AS7262")

subplot(2,2,[3,4]);
imshow(spectrum_G5_DT);
title("Datasheet")

sgtitle('GREEN Kingbright Emission Spectrum')

saveas(gcf,'GREEN_TvAvD_Emission_Spectrum.png')

%% YELLOW2

% Load YELLOW2 variable and convert to double

% ThorLabs variable
YELLOW2_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\YELLOW_LEDs\YELLOW2.mat');
spectrum_Y2_TL = double(YELLOW2_TL.spectrum);

% AS7262 variable - VIS
YELLOW2_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\YELLOW2.mat');
spectrum_Y2V_AS = double(YELLOW2_AS.spectrum_C);

% AS7262 variable - NIR
YELLOW2_NIR_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\YELLOW2_NIR.mat');
spectrum_Y2N_AS = double(YELLOW2_NIR_AS.spectrum_C);

% AS7262 variable - VIS+NIR
load('wavelengthC_AS.mat')
spectrum_Y2_AS = [spectrum_Y2V_AS(1:5);spectrum_Y2N_AS(1);spectrum_Y2V_AS(6);spectrum_Y2N_AS(2:6)];

% Normalize spectrum values
spectrum_Y2_TL_norm = normalize(spectrum_Y2_TL,'norm','inf'); % ThorLabs values normalized
spectrum_Y2_AS_norm = normalize(spectrum_Y2_AS,'norm','inf'); % AS7262 values normalized

% Fitting the spectrum values
spectrum_Y2_TL_fit = fit(wavelength_TL, spectrum_Y2_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_Y2_AS_fit = fit(wavelengthC_AS, spectrum_Y2_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% Get xData and yData from fitted plots
spectrum_Y2_TL_xData = get(plot(spectrum_Y2_TL_fit),'xData')';
spectrum_Y2_TL_yData = get(plot(spectrum_Y2_TL_fit),'yData')';

spectrum_Y2_AS_xData = get(plot(spectrum_Y2_AS_fit),'xData')';
spectrum_Y2_AS_yData = get(plot(spectrum_Y2_AS_fit),'yData')';

% Plot the emission spectrum ThorLabs vs AS7262 vs Datasheet

spectrum_Y2_DT = imread("YELLOW2_OptoSupply_Spectrum_Datasheet.jpg");

figure(3)
subplot(2,2,1);
plot(spectrum_Y2_TL_xData,spectrum_Y2_TL_yData)
axis([450 730 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ThorLabs")

subplot(2,2,2);
plot(spectrum_Y2_AS_xData,spectrum_Y2_AS_yData)
axis([450 730 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("AS7262")

subplot(2,2,[3,4]);
imshow(spectrum_Y2_DT);
title("Datasheet")

sgtitle('YELLOW OptoSupply Emission Spectrum')

saveas(gcf,'YELLOW_TvAvD_Emission_Spectrum.png')
