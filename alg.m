d = input('enter the value of d:');
l = input('enter the value of l:');
n = input('enter the value of n:');
m = input('enter the no. of detector:');
k = input('enter the detector no. for the projection matrix of that detector:');
%angle = input('enter the value of angle in degree:');
t=d/n;
angle = atand(d*0.5/l)
s=tand(k*angle*2/m-1);
for (i=1:n);
    for (j=1:n/2);
        p(j,i)=(t*(j-0.5)-s*(l+t*(i-0.5)))/(1+s^2)^(0.5);
        if(abs(p(j,i))>t/1.414)
            p(j,i)=0
        end
        p(j,i)=abs(p(j,i))
        
    end
end
disp(p)
save perpendicular_dist.dat p -ASCII
type perpendicular_dist.dat