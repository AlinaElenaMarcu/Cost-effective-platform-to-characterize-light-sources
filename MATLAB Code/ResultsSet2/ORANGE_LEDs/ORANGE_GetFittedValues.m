% Fitting the spectrum values

% ORANGE1
spectrum_O1_TL_fit = fit(wavelength_TL, spectrum_O1_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_O1_AS_fit = fit(wavelengthC_AS, spectrum_O1_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum
spectrum_O1N_AS_fit = fit(wavelengthN_AS, spectrum_O1N_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% ORANGE2
spectrum_O2_TL_fit = fit(wavelength_TL, spectrum_O2_TL_norm,'gauss5'); %fitting of ThorLabs normalized spectrum
spectrum_O2_AS_fit = fit(wavelengthC_AS, spectrum_O2_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum
spectrum_O2N_AS_fit = fit(wavelengthN_AS, spectrum_O2N_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% ORANGE3
spectrum_O3_TL_fit = fit(wavelength_TL, spectrum_O3_TL_norm,'gauss6'); %fitting of ThorLabs normalized spectrum
spectrum_O3_AS_fit = fit(wavelengthC_AS, spectrum_O3_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum
spectrum_O3N_AS_fit = fit(wavelengthN_AS, spectrum_O3N_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% ORANGE4
spectrum_O4_TL_fit = fit(wavelength_TL, spectrum_O4_TL_norm,'gauss5'); %fitting of ThorLabs normalized spectrum
spectrum_O4_AS_fit = fit(wavelengthC_AS, spectrum_O4_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum
spectrum_O4N_AS_fit = fit(wavelengthN_AS, spectrum_O4N_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% ORANGE5
spectrum_O5_TL_fit = fit(wavelength_TL, spectrum_O5_TL_norm,'gauss5'); %fitting of ThorLabs normalized spectrum
spectrum_O5_AS_fit = fit(wavelengthC_AS, spectrum_O5_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% ORANGE6
spectrum_O6_TL_fit = fit(wavelength_TL, spectrum_O6_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum
spectrum_O6_AS_fit = fit(wavelengthC_AS, spectrum_O6_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum
