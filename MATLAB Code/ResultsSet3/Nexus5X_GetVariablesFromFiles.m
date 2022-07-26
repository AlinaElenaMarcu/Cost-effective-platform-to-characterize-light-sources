%LEDs in the WHITE category -- WHITE_AS7263, WHITE_LUPA, WHITE_NEXUS5X_FLASH, WHITE_STRIP

% 1. Load WHITE_AS7263 variable and convert to double

% ThorLabs variable
WHITE_AS7263_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\WHITE_LEDs\WHITE_AS7263.mat');
wavelength_TL = double(WHITE_AS7263_TL.wavelength_nmAir); % same for all LEDs
spectrum_W1_TL = double(WHITE_AS7263_TL.spectrum);

% AS7262 variable 
WHITE_AS7263_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\WHITE_LEDs\WHITE_AS7263.mat');
wavelength_AS = double(WHITE_AS7263_AS.wavelenght_AS); % same for all LEDs
spectrum_W1_AS = double(WHITE_AS7263_AS.spectrum_C);

% 2. Load WHITE_LUPA variable and convert to double

% ThorLabs variable
WHITE_LUPA_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\WHITE_LEDs\WHITE_LUPA.mat');
spectrum_W2_TL = double(WHITE_LUPA_TL.spectrum);

% AS7262 variable 
WHITE_LUPA_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\WHITE_LEDs\WHITE_LUPA.mat');
spectrum_W2_AS = double(WHITE_LUPA_AS.spectrum_C);

% 3. Load WHITE_NEXUS5X_FLASH variable and convert to double

% ThorLabs variable
WHITE_NEXUS5X_FLASH_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\WHITE_LEDs\WHITE_NEXUS5X_FLASH.mat');
spectrum_W3_TL = double(WHITE_NEXUS5X_FLASH_TL.spectrum);

% AS7262 variable 
WHITE_NEXUS5X_FLASH_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\WHITE_LEDs\WHITE_NEXUS5X_FLASH.mat');
spectrum_W3_AS = double(WHITE_NEXUS5X_FLASH_AS.spectrum_C);

% 4. Load WHITE_STRIP variable and convert to double

% ThorLabs variable
WHITE_STRIP_TL = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\ThorLabs\WHITE_LEDs\WHITE_STRIP.mat');
spectrum_WSTRIP_TL = double(WHITE_STRIP_TL.spectrum);

% AS7262 variable 
WHITE_STRIP_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\WHITE_LEDs\WHITE_STRIP.mat');
spectrum_WSTRIP_AS = double(WHITE_STRIP_AS.spectrum_C);


