% Plot the LEDs in the ORANGE category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% ORANGE1, ORANGE2, ORANGE3, ORANGE4, ORANGE5, ORANGE6

% Load ORANGE LEDs variables -- ThorLabs and AS7262

ORANGE_GetVariablesFromFiles;

% Normalize

ORANGE_GetNormalizedValues;

% Fitting

ORANGE_GetFittedValues;