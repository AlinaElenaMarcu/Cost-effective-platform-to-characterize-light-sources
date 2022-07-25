%LEDs in the YELLOW category -- YELLOW1, YELLOW2, YELLOW_STRIP

% 1. Load YELLOW1 variable and convert to double

% ThorLabs variable
YELLOW1_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\YELLOW_LEDs\YELLOW1.mat');
wavelength_TL = double(YELLOW1_TL.wavelength_nmAir); % same for all LEDs
spectrum_Y1_TL = double(YELLOW1_TL.spectrum);

% AS7262 variable 
YELLOW1_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\YELLOW1.mat');
wavelength_AS = double(YELLOW1_AS.wavelenght_AS); % same for all LEDs
spectrum_Y1_AS = double(YELLOW1_AS.spectrum_C);

% 2. Load YELLOW2 variable and convert to double

% ThorLabs variable
YELLOW2_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\YELLOW_LEDs\YELLOW2.mat');
spectrum_Y2_TL = double(YELLOW2_TL.spectrum);

% AS7262 variable 
YELLOW2_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\YELLOW2.mat');
spectrum_Y2_AS = double(YELLOW2_AS.spectrum_C);

% 3. Load YELLOW_STRIP variable and convert to double

% ThorLabs variable
YELLOW_STRIP_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\YELLOW_LEDs\YELLOW_STRIP.mat');
spectrum_YSTRIP_TL = double(YELLOW_STRIP_TL.spectrum);

% AS7262 variable 
YELLOW_STRIP_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\YELLOW_LEDs\YELLOW_STRIP.mat');
spectrum_YSTRIP_AS = double(YELLOW_STRIP_AS.spectrum_C);