theta=[0:0.1:330].*pi./180;
x1=2-2.*cos(theta);
y1=2.*sin(theta);
x2=-2+2.*cos(theta);
y2=-2.*sin(theta);
x3=1-1.*cos(theta);
y3=1.*sin(theta);
x4=-1+1.*cos(theta);
y4=-1.*sin(theta);
hold off
plot(x1(theta>=0 & theta<=325*pi/180),y1(theta>=0 & theta<=325*pi/180),'color',[177 124 93]/255,'linewidth',2)
h=annotation('arrow');
set(h,'parent',gca,'position',[x1(end) y1(end) 0.00001*sin(theta(end)) 0.00001*cos(theta(end))],'color',[177 124 93]/255)
hold on
%quiver(x1(end),y1(end),0.00001*sin(theta(end)),0.00001*cos(theta(end)));
plot(x2(theta>=0 & theta<=325*pi/180),y2(theta>=0 & theta<=325*pi/180),'color',[240 71 74]/255,'linewidth',2)
daspect([1 1 1])
h=annotation('arrow');
set(h,'parent',gca,'position',[x2(end) y2(end) -0.00001*sin(theta(end)) -0.00001*cos(theta(end))],'color',[240 71 74]/255)
plot(x3(theta>=0 & theta<=325*pi/180),y3(theta>=0 & theta<=325*pi/180),'color',[231 120 101]/255,'linewidth',2)
h=annotation('arrow');
set(h,'parent',gca,'position',[x3(end) y3(end) 0.00001*sin(theta(end)) 0.00001*cos(theta(end))],'color',[231 120 101]/255)
plot(x4(theta>=0 & theta<=325*pi/180),y4(theta>=0 & theta<=325*pi/180),'color',[178 174 127]/255,'linewidth',2)
h=annotation('arrow');
set(h,'parent',gca,'position',[x4(end) y4(end) -0.00001*sin(theta(end)) -0.00001*cos(theta(end))],'color',[178 174 127]/255)
x5=0.*theta;
y5=0.*theta;
p=plot(x5,y5,'.','markersize',8,'color',[103 68 64]/255);
axis([-4.5 4.5 -1.5 1.5])
axis([-4.5 4.5 -2.5 2.5])
t=text(-4,2,'|0,0\rangle_x')
t=text(-2.5,1,{'|0,1\rangle_x';'|1,0\rangle_x'})
t=text(2,1,{'|0,1\rangle_x';'|1,2\rangle_x'})
delete(t)
t=text(1.9,1,{'|2,1\rangle_x';'|1,2\rangle_x'})
t=text(3.5,2,{'|2,2\rangle_x'})
delete(t)
t=text(3.2,2,{'|2,2\rangle_x'})
delete(t)
t=text(3.3,2,{'|2,2\rangle_x'})
t=text(0.1,0,{'|0,2\rangle_x';'|1,1\rangle_x';'|2,0\rangle_x'})
delete(t)
t=text(0.2,0,{'|0,2\rangle_x';'|1,1\rangle_x';'|2,0\rangle_x'})
set(gca,'fontsize',10);
xlabel('Position (arb. unit)','fontsize',14,'interpreter','latex');
ylabel('Momentum (arb. unit)','fontsize',14,'interpreter','latex');
%title('Illustration of evolution of 3-level qudits in phase space','fontsize',14);