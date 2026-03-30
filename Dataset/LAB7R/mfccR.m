% [spp,fs]=audioread('suara2.wav');
% figure (1);
% plot (spp);
% plot (spp);title(' Raw Signal ' ); ylabel ('Amplitude (V)'); xlabel ('time(s)');

data = importdata('cutx20.txt') ;  
cut2 = data(:,1) ;
f_d = 0.025;
f_size = round(f_d * fs);
n = length(cut2);
n_f = floor(n/f_size);  %no. of frames
temp = 0;
 i=i+1;
 
for i = 1 : n_f
   fprintf('Length of spp1 segment: %d\n', length(cut2));

   frames(i,:) = cut2(temp + 1 : temp + f_size);
   temp = temp + f_size;
   preemph = [1 -0.95];
   x1(i,:) = filter(preemph, 1, frames(i,:));
   y=hamming(length(frames));
   fr_win(i,:) = x1 (i,:).* y';
   c(i,:)=v_melcepst(fr_win(i,:),fs);
    
  save cutx20mfcc.txt c -ascii 
end

% plot(c)