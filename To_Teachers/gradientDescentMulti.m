function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Init Theta and Run Gradient Descent 
theta = zeros(3, 1);
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    h = X*theta;
    summa = (h-y)'*X;
    theta = theta - alpha/m*summa';
    % ============================================================

    % Save the cost J in every iteration    
    h = X*theta;
    J_history(iter) = 0.5/m*norm(h-y)^2;

end

end
