%LEDs in the YELLOW category -- YELLOW1, YELLOW2, YELLOW_STRIP

% 1. Load YELLOW1 variable and convert to double

% ThorLabs variable
YELLOW1_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\YELLOW_LEDs\YELLOW1.mat');
wavelength_TL = double(YELLOW1_TL.wavelength_nmAir); % same for all LEDs
spectrum_Y1_TL = double(YELLOW1_TL.spectrum);

% AS7262 variable - VIS
YELLOW1_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\YELLOW1.mat');
wavelength_AS = double(YELLOW1_AS.wavelenght_AS); % same for all LEDs
spectrum_Y1V_AS = double(YELLOW1_AS.spectrum_C);

% AS7262 variable - NIR
YELLOW1_NIR_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\YELLOW1_NIR.mat');
wavelengthN_AS = double(YELLOW1_NIR_AS.wavelenght_AS); % same for all LEDs
spectrum_Y1N_AS = double(YELLOW1_NIR_AS.spectrum_C);

% AS7262 variable - VIS+NIR
load('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\wavelengthC_AS.mat') % same for all LEDs
spectrum_Y1_AS = [spectrum_Y1V_AS(1:5);spectrum_Y1N_AS(1);spectrum_Y1V_AS(6);spectrum_Y1N_AS(2:6)];

%% 2. Load YELLOW2 variable and convert to double

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
spectrum_Y2_AS = [spectrum_Y2V_AS(1:5);spectrum_Y2N_AS(1);spectrum_Y2V_AS(6);spectrum_Y2N_AS(2:6)];

%% 3. Load YELLOW_STRIP variable and convert to double

% ThorLabs variable
YELLOW_STRIP_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\YELLOW_LEDs\YELLOW_STRIP.mat');
spectrum_YSTRIP_TL = double(YELLOW_STRIP_TL.spectrum);

% AS7262 variable 
YELLOW_STRIP_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\YELLOW_STRIP.mat');
spectrum_YSTRIP_AS = double(YELLOW_STRIP_AS.spectrum_C);