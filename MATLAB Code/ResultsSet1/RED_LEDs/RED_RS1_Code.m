% Plot the LEDs in the RED category ThorLabs vs AS7262, Plot data vs
% fitted values, Peak detect
% RED1, RED2, RED3, RED4, RED5, RED6, RED8_KING_SRCE, RED_RG_2THT_RED7, RED_RG_3THT, RED_STRIP

% Load RED LEDs variables -- ThorLabs and AS7262

RED_GetVariablesFromFiles;

% Normalize

RED_GetNormalizedValues;

% Fitting

RED_GetFittedValues;



