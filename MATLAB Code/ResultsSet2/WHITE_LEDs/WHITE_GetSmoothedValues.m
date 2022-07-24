% Get smoothed xData and yData from fitted plots

% WHITE_AS7263
spectrum_W1_TL_xData_smooth = get(smooth(spectrum_W1_TL_xData,'moving'),'xData');
spectrum_W1_TL_yData_smooth = get(smooth(spectrum_W1_TL_yData,'moving'),'yData');

% WHITE_LUPA
spectrum_W2_TL_xData_smooth = get(smooth(spectrum_W2_TL_xData,'moving'),'xData');
spectrum_W2_TL_yData_smooth = get(smooth(spectrum_W2_TL_yData,'moving'),'yData');

% WHITE_NEXUS5X_FLASH
spectrum_W3_TL_xData_smooth = get(smooth(spectrum_W3_TL_xData,'moving'),'xData');
spectrum_W3_TL_yData_smooth = get(smooth(spectrum_W3_TL_yData,'moving'),'yData');

% WHITE_STRIP
spectrum_WSTRIP_TL_xData_smooth = get(smooth(spectrum_WSTRIP_TL_xData,'moving'),'xData');
spectrum_WSTRIP_TL_yData_smooth = get(smooth(spectrum_WSTRIP_TL_yData,'moving'),'yData');



