% Plot all the LEDs in the BLUE category -- BLUE1_KING, BLUE2, BLUE3, BLUE4, 
% BLUE10, BLUE_AS7263, BLUE_ESP32, BLUE_STRIP

% Load BLUE LEDs variables -- ThorLabs and AS7262

BLUE_GetVariblesFromFiles;

% Normalize

% BLUE1
spectrum_B1_TL_norm = normalize(spectrum_B1_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B1_AS_norm = normalize(spectrum_B1_AS,'norm','inf'); % AS7262 values normalized

% BLUE2
spectrum_B2_TL_norm = normalize(spectrum_B2_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B2_AS_norm = normalize(spectrum_B2_AS,'norm','inf'); % AS7262 values normalized

% BLUE3
spectrum_B3_TL_norm = normalize(spectrum_B3_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B3_AS_norm = normalize(spectrum_B3_AS,'norm','inf'); % AS7262 values normalized

% BLUE4
spectrum_B4_TL_norm = normalize(spectrum_B4_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B4_AS_norm = normalize(spectrum_B4_AS,'norm','inf'); % AS7262 values normalized

% BLUE10
spectrum_B10_TL_norm = normalize(spectrum_B10_TL,'norm','inf'); % ThorLabs values normalized
spectrum_B10_AS_norm = normalize(spectrum_B10_AS,'norm','inf'); % AS7262 values normalized

% BLUE_AS7263
spectrum_BAS7263_TL_norm = normalize(spectrum_BAS7263_TL,'norm','inf'); % ThorLabs values normalized
spectrum_BAS7263_AS_norm = normalize(spectrum_BAS7263_AS,'norm','inf'); % AS7262 values normalized

% BLUE_ESP32
spectrum_BESP32_TL_norm = normalize(spectrum_BESP32_TL,'norm','inf'); % ThorLabs values normalized
spectrum_BESP32_AS_norm = normalize(spectrum_BESP32_AS,'norm','inf'); % AS7262 values normalized

% BLUE_STRIP
spectrum_BSTRIP_TL_norm = normalize(spectrum_BSTRIP_TL,'norm','inf'); % ThorLabs values normalized
spectrum_BSTRIP_AS_norm = normalize(spectrum_BSTRIP_AS,'norm','inf'); % AS7262 values normalized

% Fitting

% BLUE1
spectrum_B1_TL_fit = fit(wavelength_TL, spectrum_B1_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE1 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B1_AS_fit = fit(wavelength_AS, spectrum_B1_AS_norm,'smoothingspline',options_BLUE1); % fitting of AS7262 normalized spectrum

% BLUE2
spectrum_B2_TL_fit = fit(wavelength_TL, spectrum_B2_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE2 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B2_AS_fit = fit(wavelength_AS, spectrum_B2_AS_norm,'smoothingspline',options_BLUE2); % fitting of AS7262 normalized spectrum

% BLUE3
spectrum_B3_TL_fit = fit(wavelength_TL, spectrum_B3_TL,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE3 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B3_AS_fit = fit(wavelength_AS, spectrum_B3_AS_norm,'smoothingspline',options_BLUE3); % fitting of AS7262 normalized spectrum

% BLUE4
spectrum_B4_TL_fit = fit(wavelength_TL, spectrum_B4_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum
spectrum_B4_AS_fit = fit(wavelength_AS, spectrum_B4_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% BLUE10
spectrum_B10_TL_fit = fit(wavelength_TL, spectrum_B10_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BLUE10 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_B10_AS_fit = fit(wavelength_AS, spectrum_B10_AS_norm,'smoothingspline',options_BLUE10); % fitting of AS7262 normalized spectrum

% BLUE_AS7263
spectrum_BAS7263_TL_fit = fit(wavelength_TL, spectrum_BAS7263_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum

options_BAS7263 = fitoptions("Method","Smooth","SmoothingParam",0.001852); % smoothing parameter
spectrum_BAS7263_AS_fit = fit(wavelength_AS, spectrum_BAS7263_AS_norm,'smoothingspline',options_BAS7263); % fitting of AS7262 normalized spectrum

% BLUE_ESP32
spectrum_BESP32_TL_fit = fit(wavelength_TL, spectrum_BESP32_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum
spectrum_BESP32_AS_fit = fit(wavelength_AS, spectrum_BESP32_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% BLUE_STRIP
spectrum_BSTRIP_TL_fit = fit(wavelength_TL, spectrum_BSTRIP_TL_norm,'gauss8'); %fitting of ThorLabs normalized spectrum
spectrum_BSTRIP_AS_fit = fit(wavelength_AS, spectrum_BSTRIP_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% Get xData and yData from fitted plots

% BLUE1
spectrum_B1_TL_xData = get(plot(spectrum_B1_TL_fit),'xData')';
spectrum_B1_TL_yData = get(plot(spectrum_B1_TL_fit),'yData')';

spectrum_B1_AS_xData = get(plot(spectrum_B1_AS_fit),'xData')';
spectrum_B1_AS_yData = get(plot(spectrum_B1_AS_fit),'yData')';

% BLUE2
spectrum_B2_TL_xData = get(plot(spectrum_B2_TL_fit),'xData')';
spectrum_B2_TL_yData = get(plot(spectrum_B2_TL_fit),'yData')';

spectrum_B2_AS_xData = get(plot(spectrum_B2_AS_fit),'xData')';
spectrum_B2_AS_yData = get(plot(spectrum_B2_AS_fit),'yData')';

% BLUE3
spectrum_B3_TL_xData = get(plot(spectrum_B3_TL_fit),'xData')';
spectrum_B3_TL_yData = get(plot(spectrum_B3_TL_fit),'yData')';

spectrum_B3_AS_xData = get(plot(spectrum_B3_AS_fit),'xData')';
spectrum_B3_AS_yData = get(plot(spectrum_B3_AS_fit),'yData')';

% BLUE4
spectrum_B4_TL_xData = get(plot(spectrum_B4_TL_fit),'xData')';
spectrum_B4_TL_yData = get(plot(spectrum_B4_TL_fit),'yData')';

spectrum_B4_AS_xData = get(plot(spectrum_B4_AS_fit),'xData')';
spectrum_B4_AS_yData = get(plot(spectrum_B4_AS_fit),'yData')';

% BLUE10
spectrum_B10_TL_xData = get(plot(spectrum_B10_TL_fit),'xData')';
spectrum_B10_TL_yData = get(plot(spectrum_B10_TL_fit),'yData')';

spectrum_B10_AS_xData = get(plot(spectrum_B10_AS_fit),'xData')';
spectrum_B10_AS_yData = get(plot(spectrum_B10_AS_fit),'yData')';

% BLUE_AS7263
spectrum_BAS7263_TL_xData = get(plot(spectrum_BAS7263_TL_fit),'xData')';
spectrum_BAS7263_TL_yData = get(plot(spectrum_BAS7263_TL_fit),'yData')';

spectrum_BAS7263_AS_xData = get(plot(spectrum_BAS7263_AS_fit),'xData')';
spectrum_BAS7263_AS_yData = get(plot(spectrum_BAS7263_AS_fit),'yData')';

% BLUE_ESP32
spectrum_BESP32_TL_xData = get(plot(spectrum_BESP32_TL_fit),'xData')';
spectrum_BESP32_TL_yData = get(plot(spectrum_BESP32_TL_fit),'yData')';

spectrum_BESP32_AS_xData = get(plot(spectrum_BESP32_AS_fit),'xData')';
spectrum_BESP32_AS_yData = get(plot(spectrum_BESP32_AS_fit),'yData')';

% BLUE_STRIP
spectrum_BSTRIP_TL_xData = get(plot(spectrum_BSTRIP_TL_fit),'xData')';
spectrum_BSTRIP_TL_yData = get(plot(spectrum_BSTRIP_TL_fit),'yData')';

spectrum_BSTRIP_AS_xData = get(plot(spectrum_BSTRIP_AS_fit),'xData')';
spectrum_BSTRIP_AS_yData = get(plot(spectrum_BSTRIP_AS_fit),'yData')';

% Plot

figure(1)
plot(spectrum_B1_TL_xData,spectrum_B1_TL_yData,'r'); % red
hold on;
plot(spectrum_B2_TL_xData,spectrum_B2_TL_yData,'b'); % blue
hold on;
plot(spectrum_B3_TL_xData,spectrum_B3_TL_yData, 'm'); % magenta
hold on;
plot(spectrum_B4_TL_xData,spectrum_B4_TL_yData, 'k'); % black
hold on;
plot(spectrum_B10_TL_xData,spectrum_B10_TL_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_BAS7263_TL_xData,spectrum_BAS7263_TL_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
plot(spectrum_BESP32_TL_xData,spectrum_BESP32_TL_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_BSTRIP_TL_xData,spectrum_BSTRIP_TL_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
legend("BLUE1 KING","BLUE2","BLUE3","BLUE4","BLUE10","BLUE AS7263","BLUE ESP32","BLUE STRIP");
%axis([300 700 0 inf])
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("BLUE ThorLabs Emission Spectrum ")


figure(2)
plot(spectrum_B1_AS_xData,spectrum_B1_AS_yData,'r'); % red
hold on;
plot(spectrum_B2_AS_xData,spectrum_B2_AS_yData,'b'); % blue
hold on;
plot(spectrum_B3_AS_xData,spectrum_B3_AS_yData, 'm'); % magenta
hold on;
plot(spectrum_B4_AS_xData,spectrum_B4_AS_yData, 'k'); % black
hold on;
plot(spectrum_B10_AS_xData,spectrum_B10_AS_yData,'Color',[0, 0.4470, 0.7410]); % #0072BD color
hold on;
plot(spectrum_BAS7263_AS_xData,spectrum_BAS7263_AS_yData,'Color',[0.4660, 0.6740, 0.1880]); % #77AC30 color
hold on;
plot(spectrum_BESP32_AS_xData,spectrum_BESP32_AS_yData,'Color',[0.4940, 0.1840, 0.5560]); % #7E2F8E color
hold on;
plot(spectrum_BSTRIP_AS_xData,spectrum_BSTRIP_AS_yData,'Color',[0.6350, 0.0780, 0.1840]); % #A2142F color
hold on;
legend("BLUE1 KING","BLUE2","BLUE3","BLUE4","BLUE10","BLUE AS7263","BLUE ESP32","BLUE STRIP");
axis([450 650 0 1])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("BLUE AS7262 Emission Spectrum ")




