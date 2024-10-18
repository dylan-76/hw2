% Author Name: Dylan Convery
% Email: conver83@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather Data Analysis
% Date 10/11

%clear the command window(neater)
clear
clc

% Read data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Extract numerical data (skipping the header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

%equations for results of data
avg_temperature=mean(temperature);
avg_humidity=mean(humidity);
avg_precipitation=mean(precipitation);

%printing the results in another file
fileID=fopen("weather_summary.txt", 'w');
fprintf(fileID,"Average Temperature: %.2f \n",avg_temperature);
fprintf(fileID,"Average Humidity: %.2f \n",avg_humidity);
fprintf(fileID,"Average Precipitation: %.2f \n",avg_precipitation);
fclose(fileID);