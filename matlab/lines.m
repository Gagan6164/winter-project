d = input('enter the value of d:');
l = input('enter the value of l:');
n = input('enter the value of n:');
m = input('enter the no. of detector:');
k = input('enter the detector no. for the projection matrix of that detector:');
%angle = input('enter the value of angle in degree:');
t=d/n;
angle = atand(d*0.5/l);
s=tand(k*angle*2/(m-1));
for (i=1:n+1);
    x(i)=(l+t*(i-1));
    if (y1(i)<0)
        
    y1(i)=s*x(i);
    for (j=1:(n/2)+1);
        y(j)=t*(j-1);
        %if (s=0)
        x1(j)=y(j)/s;
        if (x1(j)<l)
            continue;
        end
        