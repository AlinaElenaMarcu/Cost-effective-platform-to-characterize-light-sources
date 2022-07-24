% Fitting the spectrum values

% YELLOW1
spectrum_O1_TL_fit = fit(wavelength_TL, spectrum_O1_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_O1_AS_fit = fit(wavelength_AS, spectrum_O1_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% YELLOW2
spectrum_O2_TL_fit = fit(wavelength_TL, spectrum_O2_TL_norm,'gauss5'); %fitting of ThorLabs normalized spectrum
spectrum_O2_AS_fit = fit(wavelength_AS, spectrum_O2_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% YELLOW_STRIP
spectrum_O3_TL_fit = fit(wavelength_TL, spectrum_O3_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_O3_AS_fit = fit(wavelength_AS, spectrum_O3_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum