% Fitting the spectrum values

% Nexus5X_Gain1
spectrum_G1_AS_fit = fit(wavelength_AS, spectrum_G1_AS_norm,'pchipinterp'); % fitting of calibrated normalized spectrum
spectrum_nG1_AS_fit = fit(wavelength_AS, spectrum_nG1_AS_norm,'pchipinterp'); % fitting of noncalibrated normalized spectrum

% Nexus5X_Gain3_7
spectrum_G3_7_AS_fit = fit(wavelength_AS, spectrum_G3_7_AS_norm,'pchipinterp'); % fitting of calibrated normalized spectrum
spectrum_nG3_7_AS_fit = fit(wavelength_AS, spectrum_nG3_7_AS_norm,'pchipinterp'); % fitting of noncalibrated normalized spectrum

% Nexus5X_Gain16
spectrum_G16_AS_fit = fit(wavelength_AS, spectrum_G16_AS_norm,'pchipinterp'); % fitting of calibrated normalized spectrum
spectrum_nG16_AS_fit = fit(wavelength_AS, spectrum_nG16_AS_norm,'pchipinterp'); % fitting of noncalibrated normalized spectrum

% Nexus5X_Gain64
spectrum_G64_AS_fit = fit(wavelength_AS, spectrum_G64_AS_norm,'pchipinterp'); % fitting of calibrated normalized spectrum
spectrum_nG64_AS_fit = fit(wavelength_AS, spectrum_nG64_AS_norm,'pchipinterp'); % fitting of noncalibrated normalized spectrum

