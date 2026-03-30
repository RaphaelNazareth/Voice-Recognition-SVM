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
cut14 = cut(1315837 : 1389679);
cut16 = cut(1389679 : 1487545);
cut17 = cut(1487545 : 1591637);
cut18 = cut(1591637 : 1665480);
cut19 = cut(1665480 : 1757118);
cut20 = cut(1757118 : 1844307);

% Parameters for feature extraction using MFCC
f_d = 0.025;                   % Frame duration in seconds
f_size = round(f_d * fs);       % Frame size in samples
hop_size = round(f_size / 2);   % Overlapping frames with 50% overlap

% List of all segments
segments = {cut1, cut2, cut3, cut4, cut5, cut6, cut7, cut8, cut9, cut10, ...
            cut11, cut12, cut13, cut14, cut16, cut17, cut18, cut19, cut20};

% Loop over each segment to perform framing and MFCC extraction
for segIdx = 1 : length(segments)
    current_segment = segments{segIdx};
    n = length(current_segment);
    n_f = floor((n - f_size) / hop_size) + 1;  % Number of overlapping frames
    
    % Pre-emphasis filter
    preemph = [1 -0.95];
    current_segment_preemph = filter(preemph, 1, current_segment);

    % Initialize matrix to store MFCCs for all frames in this segment
    mfcc_features = [];  % Dynamically grow array if MFCC size is unexpected

    % Extract MFCC features for each frame in the segment
    for i = 1 : n_f
        start_idx = (i - 1) * hop_size + 1;
        end_idx = start_idx + f_size - 1;
        
        % Ensure we don't exceed the bounds of the segment
        if end_idx > n
            break;
        end
        
        % Extract the frame and apply Hamming window
        frame = current_segment_preemph(start_idx : end_idx);
        frame = frame .* hamming(length(frame));
        
        % Compute MFCCs and store all coefficients returned
        mfcc_frame = mfcc(frame, fs, 'WindowLength', f_size);
        
        % Dynamically handle different MFCC sizes and add to feature matrix
        mfcc_features = [mfcc_features; mfcc_frame(:)'];
    end
    
    % Save MFCC features for the entire segment to one file
    filename = sprintf('cut%d_mfcc.txt', segIdx);
    save(filename, 'mfcc_features', '-ascii');
end
