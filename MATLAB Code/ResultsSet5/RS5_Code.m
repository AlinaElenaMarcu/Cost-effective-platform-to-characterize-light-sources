% Plot the Nexus5X Flash LED ESP32 vs Raspberry Pi

% Load WHITE_NEXUS5X_FLASH variable and convert to double - ESP32

% AS7262 variable 
WHITE_NEXUS5X_FLASH_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\LEDs_Gain1\WHITE_LEDs\WHITE_NEXUS5X_FLASH.mat');
wavelength_AS = double(WHITE_NEXUS5X_FLASH_AS.wavelenght_AS); % same for all LEDs
spectrum_ESP_AS = double(WHITE_NEXUS5X_FLASH_AS.spectrum_C);

% Load Nexus5X_RPI variable and convert to double - RPI

% AS7262 variable 
Nexus5X_RPI_AS = load ('D:\Proiecte\GitHub\LEDChar_ATOM2022\Measurements\AS7262\Nexus5X_RPI\Nexus5X_RPI.mat');
spectrum_RPI_AS = double(Nexus5X_RPI_AS.spectrum_C);

% Normalize spectrum values
spectrum_ESP_AS_norm = normalize(spectrum_ESP_AS,'norm','inf'); % AS7262 values normalized
spectrum_RPI_AS_norm = normalize(spectrum_RPI_AS,'norm','inf'); % AS7262 values normalized

% Fitting the spectrum values
spectrum_ESP_AS_fit = fit(wavelength_AS, spectrum_ESP_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum
spectrum_RPI_AS_fit = fit(wavelength_AS, spectrum_RPI_AS_norm,'pchipinterp'); % fitting of AS7262 normalized spectrum

% Get xData and yData from fitted plots
spectrum_ESP_AS_xData = get(plot(spectrum_ESP_AS_fit),'xData')';
spectrum_ESP_AS_yData = get(plot(spectrum_ESP_AS_fit),'yData')';

spectrum_RPI_AS_xData = get(plot(spectrum_RPI_AS_fit),'xData')';
spectrum_RPI_AS_yData = get(plot(spectrum_RPI_AS_fit),'yData')';

% Plot the emission spectrum ESP32 vs Raspberry Pi

subplot(2,1,1);
plot(spectrum_ESP_AS_xData,spectrum_ESP_AS_yData)
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("ESP32")

subplot(2,1,2);
plot(spectrum_RPI_AS_xData,spectrum_RPI_AS_yData)
axis([450 650 0 1.1])
xlabel("Wavelength [nm]");
ylabel("Intensity (normalized)");
title("Raspberry Pi")

sgtitle('Nexus5X Flash Emission Spectrum')

saveas(gcf,'Nexus5X_EvR_Spectrum.png')