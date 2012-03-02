
clf;
hold on;
fig = figure(1);
axis([0 1 0 1]);
x = exprnd(10,8,1);
p = plot(x/30,0.5+0.0*x,'go','markersize',10);
%ax = axes('Box','off','xlabel','','ylabel','','Visible','off');
