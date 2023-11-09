clc;
eqn = input('Equation:','s');
f = str2func(['@(x) ', eqn]);
tol = input('Enter tolerance: ');
roots = [];
a = input('Enter first interval: ');
b = input('Enter second interval: ');

%all root shown
while f(a)*f(b) > 0
  a = input('Enter first interval: ');
  b = input('Enter second interval: ');

end
for i = 1:10
  c = (a*f(b))-(b*f(a))/f(b)-f(a);
  roots = [c, roots];
  if abs(c - b) < tol || abs(c - a) < tol
    break;
  endif
  if f(a)*f(c) < 0
    b = c;
  elseif f(b)*f(c) < 0
    a = c;
  end
end

fprintf('Root is %0.4f\n', c);
disp('computed roots for every iteration:');
disp(roots');

%Graph shown
x = 0:0.1:10;
hold on;
plot(x, f(x));
plot(c, f(c), 'ob');
xlabel('X');
ylabel('Y');
axisLabelFontSize = 10;
set(gca, 'FontSize', axisLabelFontSize);
set(gca, 'xAxisLocation', 'origin');
