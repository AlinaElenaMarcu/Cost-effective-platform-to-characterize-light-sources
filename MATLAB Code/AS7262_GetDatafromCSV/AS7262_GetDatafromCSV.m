function [] = AS7262_GetDatafromCSV(LoadPath,SavePath)

% Check to make sure that folder actually exists.  Warn user if it doesn't.
if ~isfolder(LoadPath)
    errorMessage = sprintf('Error: The following folder does not exist:\n%s\nPlease specify a new folder.', LoadPath);
    uiwait(warndlg(errorMessage));
    myFolder = uigetdir(); % Ask for a new one.
    if myFolder == 0
         % User clicked Cancel
         return;
    end
end
% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(LoadPath, '*.csv'); % Change to whatever pattern you need.
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    baseFileName = theFiles(k).name;
    fullFileName = fullfile(theFiles(k).folder, baseFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);

    T = readtable(fullFileName);

    wavelenght_AS = table2array(T(1:1,8:13))';
    
    raw_spectrum_nonC = T(2:end,1:6);
    raw_spectrum_C = T(2:end,8:13);

    spectrum_nonC = mean(raw_spectrum_nonC{2:end,:},'omitnan')';
    spectrum_C = mean(raw_spectrum_C{2:end,:},'omitnan')';

    save(strcat(fullfile(SavePath,baseFileName(1:end-4)),'.mat'),'spectrum_nonC','spectrum_C','wavelenght_AS');
end
end