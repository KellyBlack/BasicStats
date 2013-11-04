


x = -10:0.05:15;
x0Bad = 7;
x0Assumed = 0;
sigma = 3.5;
y = exp(-((x-x0Assumed)/sigma).^2)/sqrt(pi*sigma);
yActual = exp(-((x-x0Bad)/sigma).^2)/sqrt(pi*sigma);


clf
subplot(2,1,1);
%XTick = [ (1 by 11) double array]
%XTickLabel = [ (11 by 3) char array]
%XTickLabelMode = auto
%XTickMode = auto

hold on
axis([-10 15 0 0.35])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 5 7])
set(gca,'XTickLabel',{'mu_0';'Critical';'True'})

set(gca,'YTick',0:1:1)
%set(gca,'YTickLabelMode','manual')

xbar = 5:0.05:15;
ybar = exp(-((xbar-x0Assumed)/sigma).^2)/sqrt(pi*sigma);
a = area(xbar,ybar,'FaceColor',[0.85 0.85 0.85],'LineStyle','--');
set(a,'FaceColor',[1.0 0.05 0.00]);

plot(x,y,'k-','linewidth',2);
legend('Rejection Region','H_0 Distribution', ...
       'Location','NorthEast')
legend boxoff
box off
ylabel('p')
title('Power of a Test')

subplot(2,1,2);
hold on;
axis([-10 15 0 0.35])

xbar = -10:0.05:4;
ybar = exp(-((xbar-x0Bad)/sigma).^2)/sqrt(pi*sigma);
xbar = 5:0.05:15;
ybar = exp(-((xbar-x0Bad)/sigma).^2)/sqrt(pi*sigma);
a = area(xbar,ybar,'FaceColor',[0.85 0.85 0.85],'LineStyle','--');
set(a,'FaceColor',[0.0 0.05 1.00]);

set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 5 7])
set(gca,'XTickLabel',{'mu_0';'Critical';'True'})
set(gca,'YTick',0:1:1)

plot(x,yActual,'k-','linewidth',2);
legend('Power','H_a Distribution', ...
       'Location','NorthWest')
legend boxoff
box off

xlabel('sample mean')
ylabel('p')



%print -deps power.eps
print -dpng power.png  '-r 600'



clf
%XTick = [ (1 by 11) double array]
%XTickLabel = [ (11 by 3) char array]
%XTickLabelMode = auto
%XTickMode = auto

hold on
axis([-10 15 0 0.35])
set(gca,'XTickLabelMode','manual')
set(gca,'XTick',[0 5])
set(gca,'XTickLabel',{'mu_0';'Critical'})

set(gca,'YTick',0:1:1)
%set(gca,'YTickLabelMode','manual')

xbar = 5:0.05:15;
ybar = exp(-((xbar-x0Assumed)/sigma).^2)/sqrt(pi*sigma);
a = area(xbar,ybar,'FaceColor',[0.85 0.85 0.85],'LineStyle','--');
set(a,'FaceColor',[1.0 0.05 0.00]);

plot(x,y,'k-','linewidth',2);
legend('Rejection Region','H_0 Distribution', ...
       'Location','NorthEast')
legend boxoff
ylabel('p')
xlabel('sample mean')
title('Rejection Region for an Hypothesis Test')
box off

print -dpng rejectionRegion.png  '-r 600'
