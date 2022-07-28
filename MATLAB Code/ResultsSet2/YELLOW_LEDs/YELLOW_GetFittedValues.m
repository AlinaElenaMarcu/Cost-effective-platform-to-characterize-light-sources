% Fitting the spectrum values

% YELLOW1
spectrum_Y1_TL_fit = fit(wavelength_TL, spectrum_Y1_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum
spectrum_Y1_AS_fit = fit(wavelengthC_AS, spectrum_Y1_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% YELLOW2
spectrum_Y2_TL_fit = fit(wavelength_TL, spectrum_Y2_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_Y2_AS_fit = fit(wavelengthC_AS, spectrum_Y2_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% YELLOW_STRIP
spectrum_YSTRIP_TL_fit = fit(wavelength_TL, spectrum_YSTRIP_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_YSTRIP_AS_fit = fit(wavelength_AS, spectrum_YSTRIP_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum