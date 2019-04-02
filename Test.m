disp('Enter the following Data : ');
 
l1 = 400;
l2 = 250;
l3 = 0;

q1_min = 0;
q1_max = 180;
q2_min = -120;
q2_max = 120;
q3_min = 0;
q3_max = 0;

%Transform qs into radians
t1=linspace(q1_min, q1_max, 200)*pi/180;
t2=linspace(q2_min, q2_max, 200)*pi/180;
t3=linspace(q3_min, q3_max, 200)*pi/180;

[q1,q2,q3]=ndgrid(t1,t2,t3);  %Creates the matrices of 200x200x200 for each variable 
xM = l1 * cos(q1) + l2 * cos(q1 + q2) + l3 * cos(q1 + q2 + q3);
yM = l1 * sin(q1) + l2 * sin(q1 + q2) + l3 * sin(q1 + q2 + q3);
plot(xM(:),yM(:),'r.')
xL = xlim; %all values of x 
yL = ylim; % all values of y 
line(xL, [0 0],'color','k','linewidth',1) %Draw x-axis
line([0 0], yL,'color','k','linewidth',1) %Draw y-axis