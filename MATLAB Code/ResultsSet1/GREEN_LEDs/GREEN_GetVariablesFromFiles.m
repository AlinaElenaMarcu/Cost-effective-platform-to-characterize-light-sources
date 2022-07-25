%LEDs in the GREEN category -- GREEN1, GREEN2, GREEN3, GREEN4, GREEN5_KING_SGC, GREEN_RG_2THT, GREEN_RG_3THT, GREEN_STRIP

% 1. Load GREEN1 variable and convert to double

% ThorLabs variable
GREEN1_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN1.mat');
wavelength_TL = double(GREEN1_TL.wavelength_nmAir); % same for all LEDs
spectrum_G1_TL = double(GREEN1_TL.spectrum);

% AS7262 variable 
GREEN1_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN1.mat');
wavelength_AS = double(GREEN1_AS.wavelenght_AS); % same for all LEDs
spectrum_G1_AS = double(GREEN1_AS.spectrum_C);

% 2. Load GREEN2 variable and convert to double

% ThorLabs variable
GREEN2_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN2.mat');
spectrum_G2_TL = double(GREEN2_TL.spectrum);

% AS7262 variable 
GREEN2_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN2.mat');
spectrum_G2_AS = double(GREEN2_AS.spectrum_C);

% 3. Load GREEN3 variable and convert to double

% ThorLabs variable
GREEN3_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN3.mat');
spectrum_G3_TL = double(GREEN3_TL.spectrum);

% AS7262 variable 
GREEN3_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN3.mat');
spectrum_G3_AS = double(GREEN3_AS.spectrum_C);

% 4. Load GREEN4 variable and convert to double

% ThorLabs variable
GREEN4_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN4.mat');
spectrum_G4_TL = double(GREEN4_TL.spectrum);

% AS7262 variable 
GREEN4_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN4.mat');
spectrum_G4_AS = double(GREEN4_AS.spectrum_C);

% 5. Load GREEN5_KING_SGC variable and convert to double

% ThorLabs variable
GREEN5_KING_SGC_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN5_KING_SGC.mat');
spectrum_G5_TL = double(GREEN5_KING_SGC_TL.spectrum);

% AS7262 variable 
GREEN5_KING_SGC_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN5_KING_SGC.mat');
spectrum_G5_AS = double(GREEN5_KING_SGC_AS.spectrum_C);

% 6. Load GREEN_RG_2THT variable and convert to double

% ThorLabs variable
GREEN_RG_2THT_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN_RG_2THT.mat');
spectrum_GRG2T_TL = double(GREEN_RG_2THT_TL.spectrum);

% AS7262 variable 
GREEN_RG_2THT_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN_RG_2THT.mat');
spectrum_GRG2T_AS = double(GREEN_RG_2THT_AS.spectrum_C);

% 7. Load GREEN_RG_3THT variable and convert to double

% ThorLabs variable
GREEN_RG_3THT_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN_RG_3THT.mat');
spectrum_GRG3T_TL = double(GREEN_RG_3THT_TL.spectrum);

% AS7262 variable 
GREEN_RG_3THT_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN_RG_3THT.mat');
spectrum_GRG3T_AS = double(GREEN_RG_3THT_AS.spectrum_C);

% 8. Load GREEN_STRIP variable and convert to double

% ThorLabs variable
GREEN_STRIP_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\GREEN_LEDs\GREEN_STRIP.mat');
spectrum_GSTRIP_TL = double(GREEN_STRIP_TL.spectrum);

% AS7262 variable 
GREEN_STRIP_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\GREEN_LEDs\GREEN_STRIP.mat');
spectrum_GSTRIP_AS = double(GREEN_STRIP_AS.spectrum_C);

