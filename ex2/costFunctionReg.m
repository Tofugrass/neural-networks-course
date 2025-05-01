function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
costVectorWithReg = (theta.^2)/(2*m);
J = (1/m) * ( -1*y'*log(sigmoid(X*theta)) - (1 - y)'*log(1-sigmoid(X*theta))) +  lambda*sum(costVectorWithReg(2:length(costVectorWithReg)));
gradVectorWithReg = (lambda/m)*theta';
grad =  (1/m) * ((sigmoid(X*theta)) - y)' * (X) + [0, gradVectorWithReg(2: length(gradVectorWithReg))];
% =============================================================

end
