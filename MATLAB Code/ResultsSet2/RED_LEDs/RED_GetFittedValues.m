% Fitting the spectrum values

% RED1
spectrum_R1_TL_fit = fit(wavelength_TL, spectrum_R1_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_R1_AS_fit = fit(wavelengthC_AS, spectrum_R1_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED2
spectrum_R2_TL_fit = fit(wavelength_TL, spectrum_R2_TL_norm,'gauss5'); %fitting of ThorLabs normalized spectrum
spectrum_R2_AS_fit = fit(wavelengthC_AS, spectrum_R2_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED3
spectrum_R3_TL_fit = fit(wavelength_TL, spectrum_R3_TL_norm,'gauss5'); %fitting of ThorLabs normalized spectrum
spectrum_R3_AS_fit = fit(wavelengthC_AS, spectrum_R3_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED4
spectrum_R4_TL_fit = fit(wavelength_TL, spectrum_R4_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_R4_AS_fit = fit(wavelengthC_AS, spectrum_R4_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED5
spectrum_R5_TL_fit = fit(wavelength_TL, spectrum_R5_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_R5_AS_fit = fit(wavelength_AS, spectrum_R5_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED6
spectrum_R6_TL_fit = fit(wavelength_TL, spectrum_R6_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_R6_AS_fit = fit(wavelengthC_AS, spectrum_R6_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED8_KING_SRCE
spectrum_R8_TL_fit = fit(wavelength_TL, spectrum_R8_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_R8_AS_fit = fit(wavelengthC_AS, spectrum_R8_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED_RG_2THT_RED7
spectrum_RRG2T_TL_fit = fit(wavelength_TL, spectrum_RRG2T_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_RRG2T_AS_fit = fit(wavelength_AS, spectrum_RRG2T_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED_RG_3THT
spectrum_RRG3T_TL_fit = fit(wavelength_TL, spectrum_RRG3T_TL_norm,'gauss5'); %fitting of ThorLabs normalized spectrum
spectrum_RRG3T_AS_fit = fit(wavelength_AS, spectrum_RRG3T_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% RED_STRIP
spectrum_RSTRIP_TL_fit = fit(wavelength_TL, spectrum_RSTRIP_TL_norm,'gauss5'); %fitting of ThorLabs normalized spectrum
spectrum_RSTRIP_AS_fit = fit(wavelength_AS, spectrum_RSTRIP_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum
