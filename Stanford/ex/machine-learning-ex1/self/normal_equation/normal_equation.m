clc; close all;

x = importdata('x.txt');
y = importdata('y.txt');

x = [x x.^2 x.^3];
x = [ones(size(x, 1), 1) x];

theta = pinv(x' * x) * x' * y;

f = theta(1) + x(:, 2) .* theta(2) + x(:, 3) .* theta(3) + x(:, 4) .* theta(4) ;
plot(x(:, 2), y);
hold on;
plot(x(:, 2), f);
theta