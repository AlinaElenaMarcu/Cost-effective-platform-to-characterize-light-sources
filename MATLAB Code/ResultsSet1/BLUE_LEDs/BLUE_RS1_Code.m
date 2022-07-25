% Plot the LEDs in the BLUE category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% BLUE1_KING, BLUE2, BLUE3, BLUE4, BLUE10, BLUE_AS7263, BLUE_ESP32, BLUE_STRIP

% Load BLUE LEDs variables -- ThorLabs and AS7262

BLUE_GetVariblesFromFiles;

% Normalize

BLUE_GetNormalizedValues;

% Fitting

BLUE_GetFittedValues;

% Get xData and yData from fitted plots

BLUE_GetDatafromFittedPlots;