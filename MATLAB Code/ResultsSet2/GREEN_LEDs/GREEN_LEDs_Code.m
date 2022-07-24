% Plot all the LEDs in the GREEN category -- GREEN1, GREEN2, GREEN3, GREEN4, 
% GREEN5_KING_SGC, GREEN_RG_2THT, GREEN_RG_3THT, GREEN_STRIP

% Load GREEN LEDs variables -- ThorLabs and AS7262

GREEN_GetVariablesFromFiles;

% Normalize

GREEN_GetNormalizedValues;

% Fitting

GREEN_GetFittedValues;