% Author Name: Dylan Convery
% Email: conver83@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date 10/11

%clear the command window(neater)
clear
clc

%asking the user to create a message, and how many letters they want to
%shift it
message=input("A string of lowercase letters: ","s");
shift=input("An integer shift value between 1 and 25: ");

%setting a value for the encrypted message
encrypted_message=ceaser_cypher(message,shift);

%printing the original message as well as the encrypted message
fprintf("Original message %s \n", message)
fprintf("Encrypted message %s",encrypted_message)

%shifting the original message to create the new message
function encrypted_message=ceaser_cypher(message,shift)
ascii=double(message);
encrypted_ascii=mod(ascii-'a'+shift, 26)+'a';
encrypted_message=char(encrypted_ascii);
end