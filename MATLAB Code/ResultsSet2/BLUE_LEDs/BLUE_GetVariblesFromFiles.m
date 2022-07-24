%LEDs in the BLUE category -- BLUE1_KING, BLUE2, BLUE3, BLUE4, BLUE10, BLUE_AS7263, BLUE_ESP32, BLUE_STRIP

% 1. Load BLUE1_KING variable and convert to double

% ThorLabs variable
BLUE1_KING_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE1_KING.mat');
wavelength_TL = double(BLUE1_KING_TL.wavelength_nmAir); % same for all LEDs
spectrum_B1_TL = double(BLUE1_KING_TL.spectrum);

% AS7262 variable 
BLUE1_KING_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE1_KING.mat');
wavelength_AS = double(BLUE1_KING_AS.wavelenght_AS); % same for all LEDs
spectrum_B1_AS = double(BLUE1_KING_AS.spectrum_C);

% 2. Load BLUE2 variable and convert to double

% ThorLabs variable
BLUE2_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE2.mat');
spectrum_B2_TL = double(BLUE2_TL.spectrum);

% AS7262 variable 
BLUE2_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE2.mat');
spectrum_B2_AS = double(BLUE2_AS.spectrum_C);

% 3. Load BLUE3 variable and convert to double

% ThorLabs variable
BLUE3_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE3.mat');
spectrum_B3_TL = double(BLUE3_TL.spectrum);

% AS7262 variable 
BLUE3_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE3.mat');
spectrum_B3_AS = double(BLUE3_AS.spectrum_C);

% 4. Load BLUE4 variable and convert to double

% ThorLabs variable
BLUE4_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE4.mat');
spectrum_B4_TL = double(BLUE4_TL.spectrum);

% AS7262 variable 
BLUE4_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE4.mat');
spectrum_B4_AS = double(BLUE4_AS.spectrum_C);

% 5. Load BLUE10 variable and convert to double

% ThorLabs variable
BLUE10_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE10.mat');
spectrum_B10_TL = double(BLUE10_TL.spectrum);

% AS7262 variable 
BLUE10_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE10.mat');
spectrum_B10_AS = double(BLUE10_AS.spectrum_C);

% 6. Load BLUE_AS7263 variable and convert to double

% ThorLabs variable
BLUE_AS7263_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE_AS7263.mat');
spectrum_BAS7263_TL = double(BLUE_AS7263_TL.spectrum);

% AS7262 variable 
BLUE_AS7263_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE_AS7263.mat');
spectrum_BAS7263_AS = double(BLUE_AS7263_AS.spectrum_C);

% 7. Load BLUE_ESP32 variable and convert to double

% ThorLabs variable
BLUE_ESP32_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE_ESP32.mat');
spectrum_BESP32_TL = double(BLUE_ESP32_TL.spectrum);

% AS7262 variable 
BLUE_ESP32_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE_ESP32.mat');
spectrum_BESP32_AS = double(BLUE_ESP32_AS.spectrum_C);

% 8. Load BLUE_STRIP variable and convert to double

% ThorLabs variable
BLUE_STRIP_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE_STRIP.mat');
spectrum_BSTRIP_TL = double(BLUE_STRIP_TL.spectrum);

% AS7262 variable 
BLUE_STRIP_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE_STRIP.mat');
spectrum_BSTRIP_AS = double(BLUE_STRIP_AS.spectrum_C);

