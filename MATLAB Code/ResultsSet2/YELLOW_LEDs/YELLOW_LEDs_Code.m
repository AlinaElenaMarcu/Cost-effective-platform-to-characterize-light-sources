% Plot all the LEDs in the YELLOW category -- YELLOW1, YELLOW2, YELLOW_STRIP

% Load YELLOW LEDs variables -- ThorLabs and AS7262

YELLOW_GetVariablesFromFiles;

% Normalize

YELLOW_GetNormalizedValues;

% Fitting

YELLOW_GetFittedValues;

% Get xData and yData from fitted plots

YELLOW_GetDatafromFittedPlots;