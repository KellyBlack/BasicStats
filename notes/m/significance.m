

x = -10:0.05:10;
x0 = 0;
sigma = 3.5;
y = exp(-((x-x0)/sigma).^2)/sqrt(pi*sigma);


clf

%XTick = [ (1 by 11) double array]
%XTickLabel = [ (11 by 3) char array]
%XTickLabelMode = auto
%XTickMode = auto

hold on
axis([-10 10 0 0.35])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 4])
set(gca,'YTick',0:0.1:0.7)
set(gca,'XTickLabel',{'Assumed Mean';'x_{cr}'})
set(gca,'YTick',0:1:1)
plot(x,y,'k-');

xbar = 4:0.05:10;
ybar = exp(-((xbar-x0)/sigma).^2)/sqrt(pi*sigma);
a = area(xbar,ybar,'FaceColor',[0.6 0.6 0.6]);
set(a,'FaceColor',[1.0 0.1 0.1]);
set(a,'FaceColor',[0.6 0.1 0.1]);

xlabel('x')
ylabel('p')
title('Region to Reject H_0 (Right Side Test)')
print -dpng rightSideHypothesisTest.png


clf


hold on
axis([-10 10 0 0.35])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[-4 0])
set(gca,'YTick',0:0.1:0.7)
set(gca,'XTickLabel',{'x_{cr}';'Assumed Mean'})
set(gca,'YTick',0:1:1)
plot(x,y,'k-');

xbar = -10:0.05:-4;
ybar = exp(-((xbar-x0)/sigma).^2)/sqrt(pi*sigma);
a = area(xbar,ybar,'FaceColor',[0.6 0.6 0.6]);
set(a,'FaceColor',[1.0 0.1 0.1]);
set(a,'FaceColor',[0.6 0.1 0.1]);

xlabel('x')
ylabel('p')
title('Region to Reject H_0 (Left Side Test)')
print -dpng leftSideHypothesisTest.png


clf


hold on
axis([-10 10 0 0.35])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[-4 0 4])
set(gca,'YTick',0:0.1:0.7)
set(gca,'XTickLabel',{'u-error';'u=Assumed Mean';'u+error'})
set(gca,'YTick',0:1:1)
plot(x,y,'k-');

xbar = -10:0.05:-4;
ybar = exp(-((xbar-x0)/sigma).^2)/sqrt(pi*sigma);
a = area(xbar,ybar,'FaceColor',[0.6 0.6 0.6]);
set(a,'FaceColor',[1.0 0.1 0.1]);
set(a,'FaceColor',[0.6 0.1 0.1]);

xbar = 4:0.05:10;
ybar = exp(-((xbar-x0)/sigma).^2)/sqrt(pi*sigma);
a = area(xbar,ybar,'FaceColor',[0.6 0.6 0.6]);
set(a,'FaceColor',[1.0 0.1 0.1]);
set(a,'FaceColor',[0.6 0.1 0.1]);

xlabel('x')
ylabel('p')
title('Region to Reject H_0 (Two Side Test)')
print -dpng twoSideHypothesisTest.png

