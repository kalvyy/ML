clc; close all;

x = importdata('x.txt');
y = importdata('y.txt');

x = [x x.^2 x.^3];                  %added column of bias values
x = feature_scaling(x);
y = feature_scaling(y);
x = [ones(size(x, 1), 1) x];
theta = zeros(size(x(1, :)))';      %size of first row transposed

alpha = 0.1;
iters = 500;

cost_history = zeros(1, iters);

for i = 1 : iters
  
    [cost_history(i), grad] = cost_function(x, y, theta);
    theta = theta - alpha * grad;
  
end

plot((1 : iters), cost_history);
figure
plot(x(:, 2), y);
hold on;

f = theta(1) + x(:, 2) .* theta(2) + x(:, 3) .* theta(3) + x(:, 4) .* theta(4) ;
plot(x(:, 2), f);

cost_history(length(cost_history) - 10 : end)
theta