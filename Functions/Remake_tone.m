function [adjustedImage] = Remake_tone(originalImage)
    % Define the range for the random tone change (-30% to 30%)
    minToneChange = -30;
    maxToneChange = 30;

    % Generate a random tone change factor
    toneChangePercentage = rand() * (maxToneChange - minToneChange) + minToneChange;

    % Calculate the adjustment factor for brightness
    brightnessFactor = toneChangePercentage ;    % Increase brightness

    % Scale the factor to be in the range [0.0, 1.0]
    %brightnessFactor = max(0, min(1, brightnessFactor));

    % Adjust the tone of the image (only brightness)
    adjustedImage = imadd(originalImage, brightnessFactor);

    % Display the original and adjusted images
    figure;
    subplot(1, 2, 1), imshow(originalImage), title('Original Image');
    subplot(1, 2, 2), imshow(adjustedImage), title(['Adjusted Image (' num2str(brightnessFactor) ')%']);
end
