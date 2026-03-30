% Load the audio file
[cut, fs] = audioread('suara 3 PZ.wav');
figure(1);
plot(cut);
title('Raw Signal');
ylabel('Amplitude (V)');
xlabel('Time (s)');
cut = cut(:, 1);  % Use only the first channel if stereo

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define each segment
cut1 = cut(132563 : 214413);
cut2 = cut(214413 : 315627);
cut3 = cut(315627 : 404805);
cut4 = cut(404805 : 499111);
cut5 = cut(499111 : 594306);
cut6 = cut(594306 : 690692);
cut7 = cut(690692 : 769573);
cut8 = cut(769573 : 857651);
cut9 = cut(857651 : 953736);
cut10 = cut(953736 : 1035469);
cut11 = cut(1035469 : 1132563);
cut12 = cut(1132563 : 1222420);
cut13 = cut(1222420 : 1315837);
cut14 = cut(1315837 : 1389679); %%
cut15 = cut(1389679 : 1487545);
cut16 = cut(1487545 : 1591637);
cut17 = cut(1591637 : 1665480);
cut18 = cut(1665480 : 1757118);
cut19 = cut(1757118 : 1844307);
cut20 = cut(1844308 : 1910198);

save cut1.txt cut1 -ascii
save cut2.txt cut2 -ascii
save cut3.txt cut3 -ascii
save cut4.txt cut4 -ascii
save cut5.txt cut5 -ascii
save cut6.txt cut6 -ascii
save cut7.txt cut7 -ascii
save cut8.txt cut8 -ascii
save cut9.txt cut9 -ascii
save cut10.txt cut10 -ascii
save cut11.txt cut11 -ascii
save cut12.txt cut12 -ascii
save cut13.txt cut13 -ascii
save cut14.txt cut14 -ascii
save cut15.txt cut15 -ascii
save cut16.txt cut16 -ascii
save cut17.txt cut17 -ascii
save cut18.txt cut18 -ascii
save cut19.txt cut19 -ascii
save cut20.txt cut20 -ascii


