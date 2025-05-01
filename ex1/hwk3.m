% r = 4;
% C = eye(r);
% A = [10,10,10,10];
% b = 5;
% d = [1,2,3,4];
% x = lsqlin(C,d,A,b)
% C is n by r matrix of orthonormal columns


fprintf('Plotting Data ...\n')
load('movie.mat') ;
pause;


data = X;
X = data(:, 1);
y = data(:, 2);
m = length(y); % number of training examples

% Plot Data
% Note: You have to complete the code in plotData.m
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;



%Gram schmidt orthogonalization. 
load('movie.mat') ;
V = X;
n = size(V,1);
k = size(V,2);
U = zeros(n,k);
U(:,1) = V(:,1)/sqrt(V(:,1)'*V(:,1));
for i = 2:k
  U(:,i) = V(:,i);
  for j = 1:i-1
    U(:,i) = U(:,i) - ( U(:,i)'*U(:,j) )/( U(:,j)'*U(:,j) )*U(:,j);
  end
  U(:,i) = U(:,i)/sqrt(U(:,i)'*U(:,i));
end