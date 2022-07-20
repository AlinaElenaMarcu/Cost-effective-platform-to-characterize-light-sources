load D:\Proiecte\GitHub\LEDChar_ATOM2022\Matlab\Flash\Vars_Flash.mat

%% Normalize values

spectrum_max = max(spectrum); % find max in spectrum
spectrum_norm1 = spectrum/spectrum_max; % normalize spectrum

spectrum_mS_norm = normalize(spectrum_mS,'norm','inf'); % normalize with function
spectrum_norm = normalize(spectrum,'norm','inf'); % normalize with function

%% Fitting

spectrum_mS_fit = fit(lungime_unda_mS, spectrum_mS_norm,'pchipinterp'); % fitting of spectrum_mS_norm
spectrum_norm_fit = fit(lungime_unda_d,spectrum_norm_d,'smoothingspline'); %fitting of spectrum_norm

%% Plot mormalized values

figure(1)
subplot(2,2,1);
plot(lungime_unda_mS,spectrum_mS_2);
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Normalize Excel AS7262");

subplot(2,2,2);
plot(lungime_unda_mS,spectrum_mS_norm);
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Normalize function AS7262");

subplot(2,2,3);
plot(lungime_unda,spectrum_norm1);
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Normalize Excel ThorLabs");

subplot(2,2,4);
plot(lungime_unda,spectrum_norm);
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Normalize function ThorLabs");


%{
subplot(2,2,[3,4]);
plot(lungime_unda,spectrum_norm,'b',lungime_unda,spectrum_norm1,'g');
axis([450 650 0 inf])
legend("Normalize Excel","Normalize function");
xlabel("Wavelength [nm]");
ylabel("Intensity");
%}

%% Plot on the same figure

figure(2)
plot(spectrum_norm_fit,'b');
hold on;
plot(spectrum_mS_fit,'r');
hold on;
legend("Flash ThorLabs", "Flash AS7262");
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Emission spectrum");


%% Plot on the different figs

figure(3)
subplot(2,1,1);
plot(spectrum_norm_fit,lungime_unda,spectrum_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Emission spectrum ThorLabs")

subplot(2,1,2);
plot(spectrum_mS_fit,lungime_unda_mS,spectrum_mS_norm);
axis([450 650 0 inf])
legend("Data","Fitted curve");
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Emission spectrum AS7262")


%% Peak detect

figure(4)
S_plot = plot(spectrum_norm_fit,'b');
hold on;
mS_plot = plot(spectrum_mS_fit,'r');
axis([450 650 0 inf])
legend("ThorLab fitted curve","AS7262 fitted curve");
hold on;

S_xData = get(S_plot,'xData');
S_yData = get(S_plot,'yData');

mS_xData = get(mS_plot,'xData');
mS_yData = get(mS_plot,'yData');

%figure(5)
%spectrum_norm_fit_smooth = smooth(S_xData,'moving');
%lungime_unda_d_smooth = smooth(S_yData,'moving');
%plot(spectrum_norm_fit_smooth,lungime_unda_d_smooth);

figure(6)
subplot(2,1,1);
plot(S_xData,S_yData);
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Fitted Emission spectrum ThorLabs")

subplot(2,1,2);
plot(mS_xData,mS_yData);
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Emission spectrum AS7262")

figure(6)
[S_peaks,locs1]=findpeaks(S_yData,'MinPeakHeight', 0.4);
[mS_peaks,locs2]=findpeaks(mS_yData,'MinPeakHeight', 0.5);

subplot(2,1,1);
plot(S_xData,S_yData,S_xData(locs1),S_peaks,'or')
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Peaks Emission spectrum ThorLabs")

subplot(2,1,2);
plot(mS_xData,mS_yData,mS_xData(locs2),mS_peaks,'or')
axis([450 650 0 inf])
xlabel("Wavelength [nm]");
ylabel("Intensity");
title("Peaks Emission spectrum AS7262")


%{
figure(1)
hPlot = plot(spectrum_mS_fit);
xData = get(hPlot,'xData');
yData = get(hPlot,'yData');

figure(2)
plot(xData,yData);

figure(3)
[mS_peaks,locs]=findpeaks(yData,'MinPeakHeight', 0.5);
plot(xData,yData,xData(locs),mS_peaks,'or')
%}

