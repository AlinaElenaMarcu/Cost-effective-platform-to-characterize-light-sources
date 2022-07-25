%LEDs in the RED category -- RED1, RED2, RED3, RED4, RED5,
% RED6, RED8_KING_SRCE, RED_RG_2THT_RED7, RED_RG_3THT, RED_STRIP

% 1. Load RED1 variable and convert to double

% ThorLabs variable
RED1_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED1.mat');
wavelength_TL = double(RED1_TL.wavelength_nmAir); % same for all LEDs
spectrum_R1_TL = double(RED1_TL.spectrum);

% AS7262 variable 
RED1_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED1.mat');
wavelength_AS = double(RED1_AS.wavelenght_AS); % same for all LEDs
spectrum_R1_AS = double(RED1_AS.spectrum_C);

% 2. Load RED2 variable and convert to double

% ThorLabs variable
RED2_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED2.mat');
spectrum_R2_TL = double(RED2_TL.spectrum);

% AS7262 variable 
RED2_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED2.mat');
spectrum_R2_AS = double(RED2_AS.spectrum_C);

% 3. Load RED3 variable and convert to double

% ThorLabs variable
RED3_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED3.mat');
spectrum_R3_TL = double(RED3_TL.spectrum);

% AS7262 variable 
RED3_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED3.mat');
spectrum_R3_AS = double(RED3_AS.spectrum_C);

% 4. Load RED4 variable and convert to double

% ThorLabs variable
RED4_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED4.mat');
spectrum_R4_TL = double(RED4_TL.spectrum);

% AS7262 variable 
RED4_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED4.mat');
spectrum_R4_AS = double(RED4_AS.spectrum_C);

% 5. Load RED5 variable and convert to double

% ThorLabs variable
RED5_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED5.mat');
spectrum_R5_TL = double(RED5_TL.spectrum);

% AS7262 variable 
RED5_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED5.mat');
spectrum_R5_AS = double(RED5_AS.spectrum_C);

% 6. Load RED6 variable and convert to double

% ThorLabs variable
RED6_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED6.mat');
spectrum_R6_TL = double(RED6_TL.spectrum);

% AS7262 variable 
RED6_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED6.mat');
spectrum_R6_AS = double(RED6_AS.spectrum_C);

% 7. Load RED8_KING_SRCE variable and convert to double

% ThorLabs variable
RED8_KING_SRCE_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED8_KING_SRCE.mat');
spectrum_R8_TL = double(RED8_KING_SRCE_TL.spectrum);

% AS7262 variable 
RED8_KING_SRCE_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED8_KING_SRCE.mat');
spectrum_R8_AS = double(RED8_KING_SRCE_AS.spectrum_C);

% 8. Load RED_RG_2THT_RED7 variable and convert to double

% ThorLabs variable
RED_RG_2THT_RED7_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED_RG_2THT_RED7.mat');
spectrum_RRG2T_TL = double(RED_RG_2THT_RED7_TL.spectrum);

% AS7262 variable 
RED_RG_2THT_RED7_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED_RG_2THT_RED7.mat');
spectrum_RRG2T_AS = double(RED_RG_2THT_RED7_AS.spectrum_C);

% 9. Load RED_RG_3THT variable and convert to double

% ThorLabs variable
RED_RG_3THT_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED_RG_3THT.mat');
spectrum_RRG3T_TL = double(RED_RG_3THT_TL.spectrum);

% AS7262 variable 
RED_RG_3THT_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED_RG_3THT.mat');
spectrum_RRG3T_AS = double(RED_RG_3THT_AS.spectrum_C);

% 10. Load RED_STRIP variable and convert to double

% ThorLabs variable
RED_STRIP_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\RED_LEDs\RED_STRIP.mat');
spectrum_RSTRIP_TL = double(RED_STRIP_TL.spectrum);

% AS7262 variable 
RED_STRIP_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\RED_LEDs\RED_STRIP.mat');
spectrum_RSTRIP_AS = double(RED_STRIP_AS.spectrum_C);
