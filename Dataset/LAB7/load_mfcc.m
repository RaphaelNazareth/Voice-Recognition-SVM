[spp,fs]=audioread('suara 3 PZ.wav');
figure (1);
plot (spp);
plot (spp);title(' Raw Signal ' ); ylabel ('Amplitude (V)'); xlabel ('time(s)');

data = importdata('cut16.txt') ;  
cut = data(:,1) ;
f_d = 0.025;
f_size = round(f_d * fs);
n = length(cut);
n_f = floor(n/f_size);  %no. of frames
temp = 0;
 i=i+1;
for i = 1 : n_f
   fprintf('Length of cut segment: %d\n', length(cut));

   frames(i,:) = cut(temp + 1 : temp + f_size);
   temp = temp + f_size;
   preemph = [1 -0.95];
   x1(i,:) = filter(preemph, 1, frames(i,:));
   y=hamming(length(frames));
   fr_win(i,:) = x1 (i,:).* y';
   c(i,:)=v_melcepst(fr_win(i,:),fs);
    
  save cut16mfcc.txt c -ascii 
end
plot(c)