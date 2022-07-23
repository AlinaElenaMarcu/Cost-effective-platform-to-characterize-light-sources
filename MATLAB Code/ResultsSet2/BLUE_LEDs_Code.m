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

%% Fitting

% BLUE1
spectrum_B1_TL_fit = fit(wavelength_TL, spectrum_B1_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE1 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B1_AS_fit = fit(wavelength_AS, spectrum_B1_AS_norm,'smoothingspline',options_BLUE1); % fitting of AS7262 normalized spectrum

% BLUE2
spectrum_B2_TL_fit = fit(wavelength_TL, spectrum_B2_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE2 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B2_AS_fit = fit(wavelength_AS, spectrum_B2_AS_norm,'smoothingspline',options_BLUE2); % fitting of AS7262 normalized spectrum

% BLUE3
spectrum_B3_TL_fit = fit(wavelength_TL, spectrum_B3_TL,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE3 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B3_AS_fit = fit(wavelength_AS, spectrum_B3_AS_norm,'smoothingspline',options_BLUE3); % fitting of AS7262 normalized spectrum

% BLUE4
spectrum_B4_TL_fit = fit(wavelength_TL, spectrum_B4_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum
spectrum_B4_AS_fit = fit(wavelength_AS, spectrum_B4_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% BLUE10
spectrum_B10_TL_fit = fit(wavelength_TL, spectrum_B10_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE10 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B10_AS_fit = fit(wavelength_AS, spectrum_B10_AS_norm,'smoothingspline',options_BLUE10); % fitting of AS7262 normalized spectrum

% BLUE_AS7263
spectrum_BAS7263_TL_fit = fit(wavelength_TL, spectrum_BAS7263_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BAS7263 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_BAS7263_AS_fit = fit(wavelength_AS, spectrum_BAS7263_AS_norm,'smoothingspline',options_BAS7263); % fitting of AS7262 normalized spectrum

% BLUE_ESP32
spectrum_BESP32_TL_fit = fit(wavelength_TL, spectrum_BESP32_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum
spectrum_BESP32_AS_fit = fit(wavelength_AS, spectrum_BESP32_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% BLUE_STRIP
spectrum_BSTRIP_TL_fit = fit(wavelength_TL, spectrum_BSTRIP_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum
spectrum_BSTRIP_AS_fit = fit(wavelength_AS, spectrum_BSTRIP_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

