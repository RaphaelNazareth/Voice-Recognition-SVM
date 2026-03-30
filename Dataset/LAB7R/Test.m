[spp, fs] = audioread('Suara2.wav');
figure(1);
plot(spp);
title('Raw Signal');
ylabel('Amplitude (V)');
xlabel('Time (s)');

% Frame duration and frame size calculation
f_d = 0.025;
f_size = round(f_d * fs);

% Loop through files cutx1.txt to cutx20.txt
for file_idx = 1:20
    % Generate the filename dynamically
    input_filename = sprintf('cutx%d.txt', file_idx);
    
    % Check if file exists
    if exist(input_filename, 'file') ~= 2
        fprintf('File %s does not exist. Skipping...\n', input_filename);
        continue;
    end
    
    % Load data from each file
    data = importdata(input_filename);
    cut = data(:, 1);
    n = length(cut);
    
    % Check if the file has enough samples for at least one frame
    if n < f_size
        fprintf('File %s is too short for frame size. Skipping...\n', input_filename);
        continue;
    end
    
    n_f = floor(n / f_size); % Number of frames

    temp = 0;
    c = []; % Initialize MFCC matrix for each file

    for i = 1:n_f
        % Determine the end index for the current frame
        end_idx = min(temp + f_size, n); % Ensures it doesn't exceed array bounds
        
        % Store the frame in a row of the matrix
        frames = cut(temp + 1 : end_idx);

        % Update the starting point for the next frame
        temp = temp + f_size;

        % Apply pre-emphasis filter
        preemph = [1 -0.95];
        x1 = filter(preemph, 1, frames);

        % Apply Hamming window
        y = hamming(length(x1));
        fr_win = x1 .* y;

        % Compute MFCC for the current frame
        c(i, :) = v_melcepst(fr_win, fs);
    end

    % Generate output filename based on input file name
    output_filename = sprintf('cutx%dmfcc.txt', file_idx);
    
    % Save MFCC matrix to file
    save(output_filename, 'c', '-ascii');

    fprintf('Saved MFCC features to %s\n', output_filename);
end

% Plot the MFCC features of the last file as an example
figure(2);
plot(c);
title('MFCC Features');
