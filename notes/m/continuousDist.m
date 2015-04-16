

clf

h = axes('fontsize',20,'linewidth',3);
a = plot([0 2],[1/2 1/2],'k-', ...
         0,1/2,'k-',...
         2,1/2,'k-',...
         [0 3],[0 0],'k--','linewidth',3);
axis([0 3 -.1 .75]);

hold on

filledCircle(0,.5,.04,.012,[0 0 0],30);
filledCircle(2,.5,.04,.012,[0 0 0],30);
xl = xlabel('Position','fontsize',20);
yl = ylabel('p','fontsize',20);
t = title('Probability for the Position After One  Spin','fontsize',20);
print -dpng 'uniformDist.png' -r600

area([.25 .5],[.5 .5],'FaceColor',[0 .1 .8]);
print -dpng 'uniformDistArea.png' -r600
