

x = [0 10];
y = [0 10];
z = [0 0];

xdata = 1:8/7:9;
ydata = theLine(xdata) + randn(size(xdata));


theLine = @(x) 0.5*x+3;

clf;
hold on;
box off;

xlabel('x')
ylabel('y')
zlabel('p')
axis([0 10 0 10 0 0.8])

h = plot3(xdata,ydata,xdata*0.0,'ko');
set(h,'MarkerSize',10)
set(h,'LineWidth',2.0)
h = plot3(x,[0 0],z,'k-',...
          [0 0],y,z,'k-');
set(h,'LineWidth',2.0)
     
for j=0.5:0.5:10,
    h = plot3(x,[j j],z,'k:',...
              [j j],y,z,'k:');
    set(h,'LineWidth',0.2)

end

h = plot3(x,theLine(x),z,'r-');
set(h,'LineWidth',2.2)
h = text(2,theLine(2)-0.5,0.0,'y= m x + b','FontSize',15,'Color','r');
view([0,90]);
print -dpng 'regressionInferenceOne.png' -r800
%return


factor = 0.5;
xm = 7.0;
ym = 0.5*xm+3;
s = 0.1;
yspan = 0:0.05:10;
zspan = exp(-((yspan-ym).^2)/(2.0*s))*factor;
h = plot3(yspan*0+xm,yspan,zspan,'b-', ...
          [xm xm],[ym ym],[0 factor],'g--');
set(h,'LineWidth',2.0)
h = text(xm+0.25,0.25,0.0,'x','FontSize',15,'Color','b');
print -dpng 'regressionInferenceTwo.png' -r800
%return;

view([-32,26]);
print -dpng 'regressionInferenceThree.png' -r800
