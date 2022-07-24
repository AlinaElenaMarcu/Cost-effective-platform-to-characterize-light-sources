% Normalize spectrum values

% YELLOW1
spectrum_Y1_TL_norm = normalize(spectrum_Y1_TL,'norm','inf'); % ThorLabs values normalized
spectrum_Y1_AS_norm = normalize(spectrum_Y1_AS,'norm','inf'); % AS7262 values normalized

% YELLOW2
spectrum_Y2_TL_norm = normalize(spectrum_Y2_TL,'norm','inf'); % ThorLabs values normalized
spectrum_Y2_AS_norm = normalize(spectrum_Y2_AS,'norm','inf'); % AS7262 values normalized

% YELLOW_STRIP
spectrum_YSTRIP_TL_norm = normalize(spectrum_YSTRIP_TL,'norm','inf'); % ThorLabs values normalized
spectrum_YSTRIP_AS_norm = normalize(spectrum_YSTRIP_AS,'norm','inf'); % AS7262 values normalized