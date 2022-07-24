% Plot all the LEDs in the WHITE category -- WHITE_AS7263, WHITE_LUPA, WHITE_NEXUS5X_FLASH, WHITE_STRIP

% Load WHITE LEDs variables -- ThorLabs and AS7262

WHITE_GetVariablesFromFiles;

% Normalize

WHITE_GetNormalizedValues;

% Fitting

WHITE_GetFittedValues;

% Get xData and yData from fitted plots

WHITE_GetDatafromFittedPlot;