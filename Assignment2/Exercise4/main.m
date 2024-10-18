% Author Name: Dylan Convery
% Email: conver83@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization
% Date 10/11

%clear the command window(neater)
clear
clc
%setting the variables for sizes, names, and distances.
planet_distances=[.39, .72, 1, 1.52, 5.2, 9.64, 19.22, 30.06];
planet_sizes=[.38, .95, 1, .53, 11.21, 9.45, 4.01, 3.88];
planet_names={'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};

%giving the colors of the plant based on names
colors=lines(length(planet_names));

%creating the first part of the chart
figure;
subplot(2, 1, 1);
hold on;
for i=1:length(planet_names)
scatter(planet_distances(i), planet_sizes(i), planet_sizes(i) * 100, 'filled', 'MarkerFaceColor', colors(i,:));
end

% giving axis lables
hold off;
title('Planet Distances v. Planet Sizes');
xlabel('Planet Distances');
ylabel('Planet Sizes');
grid on;

%give the legend of the chart
legend(planet_names, "Location" , 'northeastoutside')

%create the subplot for distance from the sun
subplot(2,1,2);
bar(planet_distances);
set(gca, 'xticklabel', planet_names);
title('Planet Distances from Sun');
xlabel('Planet')
ylabel('Distance from Sun')
grid on;

%save the plot
saveas(gcf, 'solar_system_visualization.png');