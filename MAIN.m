N=300;
d=1/N;
c = 0.0;
a_i = 0.0;
C_i = 0.0;
x = [];
t = [];
COH = [];
for i=1:N
   [a_i,C_i] = Coherence.my_optimal(c);
   c=c+d;
   COH(i)=C_i;
   x(i) = a_i;
   t(i) = (i-1)*d;
   %disp(a_i);
end

nexttile
plot(t,COH);
title('Coherence')

nexttile
plot(t, x);
title('Optimal a')