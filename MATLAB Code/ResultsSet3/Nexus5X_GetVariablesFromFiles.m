%LEDs in the Nexus5X category -- Nexus5X_Gain1, Nexus5X_Gain3_7, Nexus5X_Gain16, Nexus5X_Gain64

% 1. Load Nexus5X_Gain1 variable and convert to double

% AS7262 variable 
Nexus5X_Gain1_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\Nexus5X_GainAll\Nexus5X_Gain1.mat');
wavelength_AS = double(Nexus5X_Gain1_AS.wavelenght_AS); % same for all LEDs
spectrum_G1_AS = double(Nexus5X_Gain1_AS.spectrum_C); % calibrated value
spectrum_nG1_AS = double(Nexus5X_Gain1_AS.spectrum_nonC); % noncalibrated value

% 2. Load Nexus5X_Gain3_7 variable and convert to double

% AS7262 variable 
Nexus5X_Gain3_7_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\Nexus5X_GainAll\Nexus5X_Gain3_7.mat');
spectrum_G3_7_AS = double(Nexus5X_Gain3_7_AS.spectrum_C);  % calibrated value
spectrum_nG3_7_AS = double(Nexus5X_Gain3_7_AS.spectrum_nonC);  % noncalibrated value


% 3. Load Nexus5X_Gain16 variable and convert to double

% AS7262 variable 
Nexus5X_Gain16_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\Nexus5X_GainAll\Nexus5X_Gain16.mat');
spectrum_G16_AS = double(Nexus5X_Gain16_AS.spectrum_C);  % calibrated value
spectrum_nG16_AS = double(Nexus5X_Gain16_AS.spectrum_nonC);  % noncalibrated value

% 4. Load Nexus5X_Gain64 variable and convert to double

% AS7262 variable 
Nexus5X_Gain64_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\Nexus5X_GainAll\Nexus5X_Gain64.mat');
spectrum_G64_AS = double(Nexus5X_Gain64_AS.spectrum_C);  % calibrated value
spectrum_nG64_AS = double(Nexus5X_Gain64_AS.spectrum_nonC);  % noncalibrated value


