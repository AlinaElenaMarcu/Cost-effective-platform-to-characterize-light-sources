% Normalize spectrum values

% WHITE_AS7263
spectrum_W1_TL_norm = normalize(spectrum_W1_TL,'norm','inf'); % ThorLabs values normalized
spectrum_W1_AS_norm = normalize(spectrum_W1_AS,'norm','inf'); % AS7262 values normalized

% WHITE_LUPA
spectrum_W2_TL_norm = normalize(spectrum_W2_TL,'norm','inf'); % ThorLabs values normalized
spectrum_W2_AS_norm = normalize(spectrum_W2_AS,'norm','inf'); % AS7262 values normalized

% WHITE_NEXUS5X_FLASH
spectrum_W3_TL_norm = normalize(spectrum_W3_TL,'norm','inf'); % ThorLabs values normalized
spectrum_W3_AS_norm = normalize(spectrum_W3_AS,'norm','inf'); % AS7262 values normalized

% WHITE_STRIP
spectrum_WSTRIP_TL_norm = normalize(spectrum_WSTRIP_TL,'norm','inf'); % ThorLabs values normalized
spectrum_WSTRIP_AS_norm = normalize(spectrum_WSTRIP_AS,'norm','inf'); % AS7262 values normalized

