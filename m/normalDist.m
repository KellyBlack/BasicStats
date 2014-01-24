

clf

h = axes('fontsize',20,'linewidth',3);
axis([-3 3 0 0.55])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[-2 -1 0 1 2])
set(gca,'YTick',0:0.1:0.5)
set(gca,'XTickLabel',{'-2','-1','0','1','2'})
set(gca,'YTick',0:.1:0.5)

hold on
xlabel('z','fontsize',20)
ylabel('p','fontsize',20)
title('Standard Normal Distribution','fontsize',20)

z = -3:0.01:3;
f = exp(-z.*z*0.5)/sqrt(2*pi);
plot(z,f,'linewidth',3)

print -dpng 'standardNormal.png' -r600

filledCircle(-1,exp(-1/2)/sqrt(2*pi),.06,.01,[0 0 0],30);
filledCircle( 1,exp(-1/2)/sqrt(2*pi),.06,.01,[0 0 0],30);
plot([-1 -1],[0 exp(-1/2)/sqrt(2*pi)],'k:','linewidth',2)
plot([ 1  1],[0 exp(-1/2)/sqrt(2*pi)],'k:','linewidth',2)

print -dpng 'standardNormalInflection.png' -r600



clf

h = axes('fontsize',20,'linewidth',3);
axis([-3 3 0 0.55])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[-0.8 0])
set(gca,'YTick',0:0.1:0.5)
set(gca,'XTickLabel',{'a','0'})
set(gca,'YTick',0:.1:0.5)

hold on
xlabel('z','fontsize',20)
ylabel('p','fontsize',20)
title('Probability as Area','fontsize',20)

z = -3:0.01:-0.8;
f = exp(-z.*z*0.5)/sqrt(2*pi);
area(z,f,'FaceColor',[0.1 0.8 0.05]);

z = -3:0.01:3;
f = exp(-z.*z*0.5)/sqrt(2*pi);
plot(z,f,'k-',-.8,exp(-.8*.8/2)/sqrt(2*pi),'g-','linewidth',3)


print -dpng 'standardNormalArea.png' -r600


clf

h = axes('fontsize',20,'linewidth',3);
axis([-3 3 0 0.55])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[-0.8 0 1.2])
set(gca,'YTick',0:0.1:0.5)
set(gca,'XTickLabel',{'a','0','b'})
set(gca,'YTick',0:.1:0.5)

hold on
xlabel('z','fontsize',20)
ylabel('p','fontsize',20)
title('Probability as Area','fontsize',20)

z = -.8:0.01:1.2;
f = exp(-z.*z*0.5)/sqrt(2*pi);
area(z,f,'FaceColor',[0.1 0.8 0.05]);

z = -3:0.01:3;
f = exp(-z.*z*0.5)/sqrt(2*pi);
plot(z,f,'k-',-.8,exp(-.8*.8/2)/sqrt(2*pi),'g-',1.2,exp(-1.2*1.2/2)/sqrt(2*pi),'g-','linewidth',3)


print -dpng 'standardNormalAreaBoth.png' -r600


clf

h = axes('fontsize',20,'linewidth',3);
axis([-3 3 0 0.55])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[-0.8 0 1.2])
set(gca,'YTick',0:0.1:0.5)
set(gca,'XTickLabel',{'a','0','b'})
set(gca,'YTick',0:.1:0.5)

hold on
xlabel('z','fontsize',20)
ylabel('p','fontsize',20)
title('Probability as Area','fontsize',20)

z = -3.0:0.01:1.2;
f = exp(-z.*z*0.5)/sqrt(2*pi);
area(z,f,'FaceColor',[0.8 0.1 0.05]);

z = -3:0.01:3;
f = exp(-z.*z*0.5)/sqrt(2*pi);
plot(z,f,'k-',-.8,exp(-.8*.8/2)/sqrt(2*pi),'g-',1.2,exp(-1.2*1.2/2)/sqrt(2*pi),'g-','linewidth',3)


print -dpng 'standardNormalRightArea.png' -r600
