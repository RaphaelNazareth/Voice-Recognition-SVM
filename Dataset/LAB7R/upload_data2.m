% Load the audio file
[cut, fs] = audioread('suara2.wav');
figure(1);
plot(cut);
title('Raw Signal');
ylabel('Amplitude (V)');
xlabel('Time (s)');
cut = cut(:, 1);  % Use only the first channel if stereo

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define each segment
cutx1 = cut(14454 : 115632);
cutx2 = cut(115633 : 214132);
cutx3 = cut(214133 : 303695);
cutx4 = cut(303696 : 395075);
cutx5 = cut(395076 : 505484);
cutx6 = cut(505485 : 604086);
cutx7 = cut(604087 : 683241);
cutx8 = cut(683242 : 798438);
cutx9 = cut(798439 : 885439);
cutx10 = cut(885440 : 964669);
cutx11 = cut(964670 : 1076553);
cutx12 = cut(1076554 : 1146681);
cutx13 = cut(1146682 : 1246065);
cutx14 = cut(1246066 : 1342077);
cutx15 = cut(1342078 : 1438669);
cutx16 = cut(1438670 : 1531708);
cutx17 = cut(1531709 : 1616702);
cutx18 = cut(1616703 : 1702890);
cutx19 = cut(1702891 : 1790686);
cutx20 = cut(1790687 : 1891874);

save cutx1.txt cutx1 -ascii
save cutx2.txt cutx2 -ascii
save cutx3.txt cutx3 -ascii
save cutx4.txt cutx4 -ascii
save cutx5.txt cutx5 -ascii
save cutx6.txt cutx6 -ascii
save cutx7.txt cutx7 -ascii
save cutx8.txt cutx8 -ascii
save cutx9.txt cutx9 -ascii
save cutx10.txt cutx10 -ascii
save cutx11.txt cutx11 -ascii
save cutx12.txt cutx12 -ascii
save cutx13.txt cutx13 -ascii
save cutx14.txt cutx14 -ascii
save cutx15.txt cutx15 -ascii
save cutx16.txt cutx16 -ascii
save cutx17.txt cutx17 -ascii
save cutx18.txt cutx18 -ascii
save cutx19.txt cutx19 -ascii
save cutx20.txt cutx20 -ascii


