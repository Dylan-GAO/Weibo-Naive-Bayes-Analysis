% May 15, 2017
% Edited by Yuanbo Han

% Distinguish active users in tr_data manully by common sense, and save the
% property as 'isActive': 1 means 'active', 0 means 'not active'.

% For example,
% 'tr_data(2).isActive = 1' means the second user in tr_data is active
% judged by common sense.

Active_Users = [2,5,9,13,15,16,17,18,21,26,29,30,34,39,40,46,51,53,55,58,62,63,65,68,69,70,71,72,75,76,78,84,90,92,94,99];
for i = 1:99
    Tr_data(i).isActive = 0;
end
for i = 1:size(Active_Users,2)
    Tr_data(Active_Users(i)).isActive = 1;
end
clear Active_Users i;

save Tr_data Tr_data;