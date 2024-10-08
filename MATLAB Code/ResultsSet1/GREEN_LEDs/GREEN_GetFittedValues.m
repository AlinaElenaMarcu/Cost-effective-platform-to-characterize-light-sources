% Fitting the spectrum values

% GREEN1
spectrum_G1_TL_fit = fit(wavelength_TL, spectrum_G1_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_G1_AS_fit = fit(wavelength_AS, spectrum_G1_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% GREEN2
spectrum_G2_TL_fit = fit(wavelength_TL, spectrum_G2_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_G2_AS_fit = fit(wavelength_AS, spectrum_G2_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% GREEN3
spectrum_G3_TL_fit = fit(wavelength_TL, spectrum_G3_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_G3_AS_fit = fit(wavelength_AS, spectrum_G3_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% GREEN4
spectrum_G4_TL_fit = fit(wavelength_TL, spectrum_G4_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_G4_AS_fit = fit(wavelength_AS, spectrum_G4_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% GREEN5_KING_SGC
spectrum_G5_TL_fit = fit(wavelength_TL, spectrum_G5_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_G5_AS_fit = fit(wavelength_AS, spectrum_G5_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% GREEN_RG_2THT
spectrum_GRG2T_TL_fit = fit(wavelength_TL, spectrum_GRG2T_TL_norm,'gauss4'); %fitting of ThorLabs normalized spectrum
spectrum_GRG2T_AS_fit = fit(wavelength_AS, spectrum_GRG2T_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% GREEN_RG_3THT
spectrum_GRG3T_TL_fit = fit(wavelength_TL, spectrum_GRG3T_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_GRG3T_AS_fit = fit(wavelength_AS, spectrum_GRG3T_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% GREEN_STRIP
spectrum_GSTRIP_TL_fit = fit(wavelength_TL, spectrum_GSTRIP_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_GSTRIP_AS_fit = fit(wavelength_AS, spectrum_GSTRIP_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum