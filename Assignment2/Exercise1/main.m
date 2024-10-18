% Author Name: Dylan Convery
% Email: conver83@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population Growth Analysis
% Date 10/11

%clear the command window(neater)
clear
clc

%entering the data as a vector
population=[5000, 5200, 5350, 5600, 5800];
%setting the growth rate
growth_rate = (population(2:end) - population(1:end-1)) ./population(1:end-1);
pop_data = [population; [0 growth_rate]];
%printing the results
fprintf("year \t population \t growth rate \n")
%tabulating the results to organize answers
for i=1:length(population)
    fprintf("%d \t %d \t %.2f \n",i,pop_data(1,i),pop_data(2,i)*100)
end
