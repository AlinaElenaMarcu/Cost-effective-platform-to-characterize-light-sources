%LEDs in the ORANGE category -- ORANGE1, ORANGE2, ORANGE3, ORANGE4, ORANGE5, ORANGE6

% 1. Load ORANGE1 variable and convert to double

% ThorLabs variable
ORANGE1_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\ORANGE_LEDs\ORANGE1.mat');
wavelength_TL = double(ORANGE1_TL.wavelength_nmAir); % same for all LEDs
spectrum_O1_TL = double(ORANGE1_TL.spectrum);

% AS7262 variable - VIS
ORANGE1_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE1.mat');
wavelengthVIS_AS = double(ORANGE1_AS.wavelenght_AS); % same for all LEDs
spectrum_O1V_AS = double(ORANGE1_AS.spectrum_C);

% AS7262 variable - NIR
ORANGE1_NIR_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE1_NIR.mat');
wavelengthN_AS = double(ORANGE1_NIR_AS.wavelenght_AS); % same for all LEDs
spectrum_O1N_AS = double(ORANGE1_NIR_AS.spectrum_C);

% AS7262 variable - VIS+NIR
load('wavelengthC_AS.mat') % same for all LEDs
load('spectrum_O1_AS.mat')

% 2. Load ORANGE2 variable and convert to double

% ThorLabs variable
ORANGE2_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\ORANGE_LEDs\ORANGE2.mat');
spectrum_O2_TL = double(ORANGE2_TL.spectrum);

% AS7262 variable - VIS
ORANGE2_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE2.mat');
spectrum_O2V_AS = double(ORANGE2_AS.spectrum_C);

% AS7262 variable - NIR
ORANGE2_NIR_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE2_NIR.mat');
spectrum_O2N_AS = double(ORANGE2_NIR_AS.spectrum_C);

% AS7262 variable - VIS+NIR
load('spectrum_O2_AS.mat')

% 3. Load ORANGE3 variable and convert to double

% ThorLabs variable
ORANGE3_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\ORANGE_LEDs\ORANGE3.mat');
spectrum_O3_TL = double(ORANGE3_TL.spectrum);

% AS7262 variable - VIS
ORANGE3_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE3.mat');
spectrum_O3V_AS = double(ORANGE3_AS.spectrum_C);

% AS7262 variable - NIR
ORANGE3_NIR_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE3_NIR.mat');
spectrum_O3N_AS = double(ORANGE3_NIR_AS.spectrum_C);

% AS7262 variable - VIS+NIR
load('spectrum_O3_AS.mat')

% 4. Load ORANGE4 variable and convert to double

% ThorLabs variable
ORANGE4_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\ORANGE_LEDs\ORANGE4.mat');
spectrum_O4_TL = double(ORANGE4_TL.spectrum);

% AS7262 variable - VIS
ORANGE4_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE4.mat');
spectrum_O4V_AS = double(ORANGE4_AS.spectrum_C);

% AS7262 variable - NIR
ORANGE4_NIR_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE4_NIR.mat');
spectrum_O4N_AS = double(ORANGE4_NIR_AS.spectrum_C);

% AS7262 variable - VIS+NIR
load('spectrum_O4_AS.mat')

% 5. Load ORANGE5 variable and convert to double

% ThorLabs variable
ORANGE5_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\ORANGE_LEDs\ORANGE5.mat');
spectrum_O5_TL = double(ORANGE5_TL.spectrum);

% AS7262 variable 
ORANGE5_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE5.mat');
spectrum_O5_AS = double(ORANGE5_AS.spectrum_C);

% 6. Load ORANGE6 variable and convert to double

% ThorLabs variable
ORANGE6_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\ORANGE_LEDs\ORANGE6.mat');
spectrum_O6_TL = double(ORANGE6_TL.spectrum);

% AS7262 variable 
ORANGE6_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\ORANGE_LEDs\ORANGE6.mat');
spectrum_O6_AS = double(ORANGE6_AS.spectrum_C);
