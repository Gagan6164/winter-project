clear;
d = input('Enter Length of the object : ');
t1 = input(' Enter the distance between  centre of object and source ');
%t2 = input('Enter the distance between  centre of object and  detector ');
m = input('Enter the no of detecter ');
n = input(' Order of Matrix  :   ');
j = input('which');
theta_max = atand(d/(2*l));
theta = 2 * theta_max * j   /   (m-1);
s= tand(theta);
t = d/n;
i = 0;
l = (t1 - d/2);
while(i<=(n))
    x = (i * t )+ l;
    y = x* s; 
    if(y > d/2)
        break;
    end
    cor(i+1,1) = x;
    cor(i+1,2) = y;
    i = i+1;
end
k = 0 ;
while(k<=(n/2))
    y =  k* t;
    x  = y/s
    if((x>=l)&&(x<=(l+d)))
        cor(i+1,1) = x;
        cor(i+1,2) = y;
        i = i+1;
    end
end
disp(cor);
sort(cor);
disp(cor);





