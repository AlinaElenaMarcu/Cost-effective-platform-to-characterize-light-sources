%% Load BLUE1_KING variable and convert to double

% ThorLabs variable
BLUE1_KING_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE1_KING.mat');
wavelength_TL = double(BLUE1_KING_TL.wavelength_nmAir); % same for all LEDs
spectrum_B1_TL = double(BLUE1_KING_TL.spectrum);

% AS7262 variable 
BLUE1_KING_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE1_KING.mat');
wavelength_AS = double(BLUE1_KING_AS.wavelenght_AS); % same for all LEDs
spectrum_B1_AS = double(BLUE1_KING_AS.spectrum_C);

% Load BLUE2 variable and convert to double

% ThorLabs variable
BLUE2_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\BLUE_LEDs\BLUE2.mat');
spectrum_B2_TL = double(BLUE2_TL.spectrum);

% AS7262 variable 
BLUE2_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\BLUE_LEDs\BLUE2.mat');
spectrum_B2_AS = double(BLUE2_AS.spectrum_C);