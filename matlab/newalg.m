d = input('enter the value of d:');
l = input('enter the value of l:');
n = input('enter the value of n:');
m = input('enter the no. of detector:');
k = input('enter the detector no. for the projection matrix of that detector:');
%angle = input('enter the value of angle in degree:');
t=d/n;
angle = atand(d*0.5/l);
s=tand(k*angle*2/(m-1));
for (i=1:n);
    for (j=1:n/2);
        x(i)=(l+t*(i-0.5));
        y(j)=t*(j-0.5);
        
        
        p(j,i)=(y(j)-s*x(i))/((1+s^2)^(0.5));
        if(abs(p(j,i))>t/1.414)
            p(j,i)=0;
        end
        p(j,i)=abs(p(j,i));
        if ((y(j)-t*0.5)<s*(x(i)-t*0.5))
            s1(j,i)= (y(j)-s*(x(i)-t*0.5))/(t*0.5);
            tabw1(j,i) = (s+s1(j,i))/(1-s*s1(j,i));
            w(j,i)=2*p(j,i)/(tabw1(j,i));
        elseif ((x(i)-t*0.5)<((y(j)-t*0.5)/s))
            s2(j,i)= (s*t*0.5)/(s*x(i)-y(j)+t*0.5);
            tabw2(j,i) = (s+s2(j,i))/(1-s*s2(j,i));
            w(j,i)=2*p(j,i)/(tabw2(j,i));
        end
        if (p(j,i)>0)&&(p(j,i)<t*0.1)||(w(j,i)>1.414*t)
            w(j,i)=t*secd(k*angle*2/(m-1));
        end
      %  if (w(j,i)>1.414*t)
       %     w(j,i)= t*0.856;
       % end
        w(j,i)=abs(w(j,i));
    end
end
%disp(p)
disp(w)
save perpendicular_d.dat p -ASCII
type perpendicular_d.dat