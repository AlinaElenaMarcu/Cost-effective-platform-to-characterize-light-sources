% Plot all the LEDs in the BLUE category -- BLUE1_KING, BLUE2, BLUE3, BLUE4, 
% BLUE10, BLUE_AS7263, BLUE_ESP32, BLUE_STRIP

%% Load BLUE LEDs variables -- ThorLabs and AS7262

BLUE_GetVariblesFromFiles;

%% Normalize

% BLUE1
spectrum_B1_TL_norm = normalize(spectrum_B1_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B1_AS_norm = normalize(spectrum_B1_AS,'norm','inf'); % AS7262 values normalized

% BLUE2
spectrum_B2_TL_norm = normalize(spectrum_B2_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B2_AS_norm = normalize(spectrum_B2_AS,'norm','inf'); % AS7262 values normalized

% BLUE3
spectrum_B3_TL_norm = normalize(spectrum_B3_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B3_AS_norm = normalize(spectrum_B3_AS,'norm','inf'); % AS7262 values normalized

% BLUE4
spectrum_B4_TL_norm = normalize(spectrum_B4_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B4_AS_norm = normalize(spectrum_B4_AS,'norm','inf'); % AS7262 values normalized

% BLUE10
spectrum_B10_TL_norm = normalize(spectrum_B10_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B10_AS_norm = normalize(spectrum_B10_AS,'norm','inf'); % AS7262 values normalized

% BLUE_AS7263
spectrum_BAS7263_TL_norm = normalize(spectrum_BAS7263_TL,'norm','inf'); % ThorLabs values normalized
spectrum_BAS7263_AS_norm = normalize(spectrum_BAS7263_AS,'norm','inf'); % AS7262 values normalized

% BLUE_ESP32
spectrum_BESP32_TL_norm = normalize(spectrum_BESP32_TL,'norm','inf'); % ThorLabs values normalized
spectrum_BESP32_AS_norm = normalize(spectrum_BESP32_AS,'norm','inf'); % AS7262 values normalized

% BLUE_STRIP
spectrum_BSTRIP_TL_norm = normalize(spectrum_BSTRIP_TL,'norm','inf'); % ThorLabs values normalized
spectrum_BSTRIP_AS_norm = normalize(spectrum_BSTRIP_AS,'norm','inf'); % AS7262 values normalized