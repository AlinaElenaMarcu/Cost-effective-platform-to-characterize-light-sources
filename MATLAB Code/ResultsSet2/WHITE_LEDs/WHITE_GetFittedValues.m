% Fitting the spectrum values

% WHITE_AS7263
spectrum_W1_TL_fit = fit(wavelength_TL, spectrum_W1_TL_norm,'nearestinterp'); %fitting of ThorLabs normalized spectrum
spectrum_W1_AS_fit = fit(wavelength_AS, spectrum_W1_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% WHITE_LUPA
spectrum_W2_TL_fit = fit(wavelength_TL, spectrum_W2_TL_norm,'nearestinterp'); %fitting of ThorLabs normalized spectrum
spectrum_W2_AS_fit = fit(wavelength_AS, spectrum_W2_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% WHITE_NEXUS5X_FLASH
spectrum_W3_TL_fit = fit(wavelength_TL, spectrum_W3_TL_norm,'nearestinterp'); %fitting of ThorLabs normalized spectrum
spectrum_W3_AS_fit = fit(wavelength_AS, spectrum_W3_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% WHITE_STRIP
spectrum_WSTRIP_TL_fit = fit(wavelength_TL, spectrum_WSTRIP_TL_norm,'nearestinterp'); %fitting of ThorLabs normalized spectrum
spectrum_WSTRIP_AS_fit = fit(wavelength_AS, spectrum_WSTRIP_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum


