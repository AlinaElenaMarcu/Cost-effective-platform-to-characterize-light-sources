% Plot the Nexus5X Flash LED for all the measured gains (1, 3.7, 16, 64) --
% 2 Plots noncalibrated and calibrated values

% Load Nexus5x Flash LED variables -- AS7262

Nexus5X_GetVariablesFromFiles;

% Normalize

Nexus5X_GetNormalizedValues;

% Fitting

Nexus5X_GetFittedValues;

% Get xData and yData from fitted plots

Nexus5X_GetDatafromFittedPlot;