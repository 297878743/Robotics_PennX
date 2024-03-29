% rand(3,1) generates a random 3 by one column vector. We use this u to plot
u=rand(3,1)*2-1;

% plot the origin
plot3(0,0,0,'.k')

% axis setting
axis vis3d
axis off

%%%%% your code starts here %%%%%
% generate a random rotation matrix R
A=rand(3,3);
R=orth(A);
% plot the x axis 
plot3([0,1],[0,0],[0,0],'r');
text(1,0,0,'x')

% plot the y axis 
plot3([0,0],[0,1],[0,0],'g');
text(0,1,0,'y')

% plot the z axis 
plot3([0,0],[0,0],[0,1],'b');
text(0,0,1,'z')

% plot the original vector u
us=[0,0,0];%向量起点
ue=[u(1),u(2),u(3)];%向量终点
point=[us;ue];
plot3(point(:,1),point(:,2),point(:,3),'--k');%绘图
text(u(1),u(2),u(3),['(',num2str(u(1),'%.3f'),',',num2str(u(2),'%.3f'),',',num2str(u(3),'%.3f'),')'])
hold on
% apply rotation and calcuate v plot the vector after rotation v
v = R*u;

% plot the new vector v
vs=[0,0,0];%向量起点
ve=[v(1),v(2),v(3)];%向量终点
point=[vs;ve];
plot3(point(:,1),point(:,2),point(:,3),':k');%绘图
text(v(1),v(2),v(3),['(',num2str(v(1),'%.3f'),',',num2str(v(2),'%.3f'),',',num2str(v(3),'%.3f'),')'])

%%%%% your code ends here %%%%%
