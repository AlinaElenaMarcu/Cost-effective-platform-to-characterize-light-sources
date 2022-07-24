% Get xData and yData from fitted plots

% YELLOW1
spectrum_Y1_TL_xData = get(plot(spectrum_Y1_TL_fit),'xData')';
spectrum_Y1_TL_yData = get(plot(spectrum_Y1_TL_fit),'yData')';

spectrum_Y1_AS_xData = get(plot(spectrum_Y1_AS_fit),'xData')';
spectrum_Y1_AS_yData = get(plot(spectrum_Y1_AS_fit),'yData')';

% YELLOW2
spectrum_Y2_TL_xData = get(plot(spectrum_Y2_TL_fit),'xData')';
spectrum_Y2_TL_yData = get(plot(spectrum_Y2_TL_fit),'yData')';

spectrum_Y2_AS_xData = get(plot(spectrum_Y2_AS_fit),'xData')';
spectrum_Y2_AS_yData = get(plot(spectrum_Y2_AS_fit),'yData')';

% YELLOW_STRIP
spectrum_YSTRIP_TL_xData = get(plot(spectrum_YSTRIP_TL_fit),'xData')';
spectrum_YSTRIP_TL_yData = get(plot(spectrum_YSTRIP_TL_fit),'yData')';

spectrum_YSTRIP_AS_xData = get(plot(spectrum_YSTRIP_AS_fit),'xData')';
spectrum_YSTRIP_AS_yData = get(plot(spectrum_YSTRIP_AS_fit),'yData')';