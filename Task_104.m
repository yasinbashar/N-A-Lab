clc;
pkg load symbolic;

eqn = input('Equation:','s');
f = str2func(['@(x) ', eqn]);
tol = input('Enter tolerance: ');
syms x;
derivative_eqn = diff(f(x), x);
f2 = matlabFunction(derivative_eqn);

roots = [];
a = input('Enter first interval: ');
b = input('Enter second interval: ');
%Root calculation
while f(a)*f(b) > 0
  a = input('Enter first interval: ');
  b = input('Enter second interval: ');

end

 c = (a+b)/2;
for i = 1:10

  roots = [c, roots];
  d = c - (f(c)/f2(c));
  if abs(d-c) <= tol
    break;
  endif
  c = d;
end

fprintf('Root is %0.4f\n', c);
disp('computed roots for every iteration:');
disp(roots');

%Graph visualization
x = 0:0.1:10;
hold on;
plot(x, f(x));
plot(c, f(c), 'ob');
xlabel('X');
ylabel('Y');
axisLabelFontSize = 10;
set(gca, 'FontSize', axisLabelFontSize);
set(gca, 'xAxisLocation', 'origin');
