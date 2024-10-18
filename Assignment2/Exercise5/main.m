% Author Name: Dylan Convery
% Email: conver83@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock Market Analysis
% Date 10/11

%clear command window
clear
clc

% Read stock data from 'stock_data.txt'
data = load('stock_data.txt');

% Calculate statistics
average_price = mean(data);
highest_price = max(data);
lowest_price = min(data);
increase_days = sum(diff(data) > 0);

% Print statistics
fprintf('Average Closing Price: %.2f\n', average_price);
fprintf('Highest Closing Price: %.2f\n', highest_price);
fprintf('Lowest Closing Price: %.2f\n', lowest_price);
fprintf('Number of Days Price Increased: %d\n', increase_days);

% Create a line plot
figure;
plot(data, '-o', 'DisplayName', 'Daily Closing Prices', 'LineWidth', 1.5);
hold on;
yline(average_price, '--', 'Average Price', 'Color', 'r', 'LineWidth', 1.5, 'DisplayName', 'Average Price');
yline(highest_price, '--', 'Highest Price', 'Color', 'g', 'LineWidth', 1.5, 'DisplayName', 'Highest Price');
yline(lowest_price, '--', 'Lowest Price', 'Color', 'b', 'LineWidth', 1.5, 'DisplayName', 'Lowest Price');
hold off;

% Add labels and title
title('Stock Closing Prices Analysis');
xlabel('Days');
ylabel('Closing Price');
legend('show');
grid on;

% Saving the plot
saveas(gcf, 'stock_analysis.png');

% Writing a summary in a different file
summary_file = fopen('stock_summary.txt', 'w');
fprintf(summary_file, 'Stock Analysis Summary:\n');
fprintf(summary_file, 'Average Closing Price: %.2f\n', average_price);
fprintf(summary_file, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(summary_file, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(summary_file, 'Number of Days Price Increased: %d\n', increase_days);
fclose(summary_file);