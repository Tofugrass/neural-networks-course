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

%first we seperate positive and negative results by calling find on y

accepted = find(y == 1);
declined = find(y == 0);

%next, we plot the X's that were accepted.

plot( X(accepted, 1), X(accepted, 2), 'k+' ,'MarkerFaceColor', 'green', 'LineWidth', 2, 'MarkerSize', 7);

%finally, we plot the X's that were declined.

plot( X(declined, 1), X(declined, 2), 'ko','MarkerFaceColor', 'r',  'MarkerSize', 7);


% =========================================================================



hold off;

end
