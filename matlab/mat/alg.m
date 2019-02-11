d = input('enter the value of d:');
l = input('enter the value of l:');
n = input('enter the value of n:');
m = input('enter the no. of detector');
% angle = input('enter the value of angle in degree:');
t=d/n;
angle=atand(d*0.5/l)
for (k=1:(m+1)/2)
    s(k)=tand((k-1)*angle*2/m-1);
    for (i=1:n);
        for (j=1:n/2);
            p(j,i)=(t*(j-0.5)-s(k)*(l+t*(i-0.5)))/(1+s(k)^2)^(0.5);
            if(abs(p(j,i))>t/1.414)
                p(j,i)=0
            end
%        if (s*(l+(i-1)*t>t*(j-1)))
 %       w(i,j)=2*p(i,j)*((t*0.5-s*t*(j-0.5)-s*(1+t)*(i-1))/(t*(j-0.5)-s*(l+t*(i-0.5)-t)));
  %      else
   %         w(i,j)=2*p(i,j)*((s*(l+(i-0.5)*t)-t*(j-1)-(s^2)*t*0.5)/s*(1+t*0.5))
   %     end
        end
    end
end
disp(p)
disp(s)
save perpendicular_dist.dat p -ASCII
type perpendicular_dist.dat