A=input('Enter 1st Matrix :');
B=input('Enter 2nd Matrix :');
maxx=max(A);
fprintf('Maximum Value of A Matrix: %d\n', maxx);
x=columns(A);
y=rows(B);
if x==y
  ans=A*B;
  fprintf('Multiplied Matrix :\n');
  disp(ans);
else
  fprintf('Multiplication impossible');
end



