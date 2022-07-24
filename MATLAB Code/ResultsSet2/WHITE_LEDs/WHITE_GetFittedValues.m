% Fitting the spectrum values

% WHITE_AS7263
%opts = fitoptions( 'Method', 'SmoothingSpline' );
%opts.Normalize = 'on';
%opts.SmoothingParam = 0.99999;
options_W1 = fitoptions("Method","Smooth","Normalize",'on',"SmoothingParam",0.99999); % smoothing parameter
spectrum_W1_TL_fit = fit(wavelength_TL, spectrum_W1_TL_norm,'smoothingspline',options_W1); %fitting of ThorLabs normalized spectrum

spectrum_W1_AS_fit = fit(wavelength_AS, spectrum_W1_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% WHITE_LUPA
options_W2 = fitoptions("Method","Smooth","Normalize",'on',"SmoothingParam",0.99999); % smoothing parameter
spectrum_W2_TL_fit = fit(wavelength_TL, spectrum_W2_TL_norm,'smoothingspline',options_W2); %fitting of ThorLabs normalized spectrum

spectrum_W2_AS_fit = fit(wavelength_AS, spectrum_W2_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% WHITE_NEXUS5X_FLASH
options_W3 = fitoptions("Method","Smooth","Normalize",'on',"SmoothingParam",0.99999); % smoothing parameter
spectrum_W3_TL_fit = fit(wavelength_TL, spectrum_W3_TL_norm,'smoothingspline',options_W3); %fitting of ThorLabs normalized spectrum

spectrum_W3_AS_fit = fit(wavelength_AS, spectrum_W3_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% WHITE_STRIP
options_W4 = fitoptions("Method","Smooth","Normalize",'on',"SmoothingParam",0.99999); % smoothing parameter
spectrum_WSTRIP_TL_fit = fit(wavelength_TL, spectrum_WSTRIP_TL_norm,'smoothingspline',options_W4); %fitting of ThorLabs normalized spectrum

spectrum_WSTRIP_AS_fit = fit(wavelength_AS, spectrum_WSTRIP_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum



