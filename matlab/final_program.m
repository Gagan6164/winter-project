clear;
d = input('Enter Length of the object :-');
t1 = input('Enter the distance between centre of object and source:- ');
a = input('angle by which detecter and source to be rotated:-');
m = input('Enter the total no of detecter:-');
n = input('Order of Matrix:-');
j = input('projection matrix of detecter:-');
h = t1*(cosd(180-a)+1);
g = t1*(sind(180-a));
l = (t1 - d/2);
theta_max = atand(d/(2*l));
theta = (2*theta_max*j/(m-1))-a;
s= tand(theta);
c = g -(s*h);
t = d/n;
i = 0;
while(i<=(n))
    x = (i * t )+ l;
    y = x*s + c; 
    if((y>=(-0.5*d))&&(y<=(0.5*d)))
        cor(i+1,1) = x;
        cor(i+1,2) = y;
    end
    i = i+1;
end
k = 0 ;
while(k<=(n))
    if (s~=0)
    y =  (k*t)-(0.5*d);
   
    x=(y-c)/s;
    if((x>=l)&&(x<=(l+d)))
        cor(i+1,1) = x;
        cor(i+1,2) = y;
        i = i+1;
    end
    end
    k = k+1;
end
f=1;
for z=1:i
    if (cor(z,1)~=0)
        b(f) = (cor(z,1));
        f=f+1;
    end
end
b = sort(b);
%disp(b);
for e=2:f-1
dist(e-1) = abs((b(e)-b(e-1)))*(1+s^2)^(0.5);
end
%disp(dist);
w = zeros(n);
for i=1:f-2
v = ceil(((b(i+1)+b(i))*0.5-l)/t);
if (mod(n,2)~= 0)
    u = abs((n+1)*0.5-floor(((s*(b(i+1)+b(i))*0.5)+c+(t*0.5))/t));
else
    u = abs(n*0.5-floor(((s*(b(i+1)+b(i))*0.5)+c)/t));
end
w(v,u) = dist(i);
end
disp(w')
w = w';
save dist.dat w -ASCII
%type dist.dat







