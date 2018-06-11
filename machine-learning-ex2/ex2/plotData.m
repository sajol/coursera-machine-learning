function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

positiveIndices = find(y == 1);
negativeIndices = find(y == 0);

positiveExam1Scores = X(positiveIndices, 1);
positiveExam2Scores = X(positiveIndices, 2);

negativeExam1Scores = X(negativeIndices, 1);
negativeExam2Scores = X(negativeIndices, 2);

plot(positiveExam1Scores, positiveExam2Scores, 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(negativeExam1Scores, negativeExam2Scores, 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

% =========================================================================



hold off;

end
