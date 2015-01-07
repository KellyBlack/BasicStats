function tree(totalDepth,totalNumber)


    function drawCircle(x,y,centerx,centery,subtrees,depth,maxDepth,width)
        if(depth<=maxDepth)
            left = centerx - width*0.5;
            width = width/subtrees*0.5;
            for num=1:subtrees,
                plot(0.8*x+left+(2*num-1)*width,0.8*y+centery,'k');
                drawCircle(x,y, ...
                           left+(2*num-1)*width, ...
                           centery-5, ...
                           subtrees-1,depth+1,maxDepth,width*2.0);
            end
        end
    end


%totalDepth = 3;
%totalNumber = 4;
radius = 5;

numPoints = 100;
for theta=0:numPoints,
    x(theta+1) = cos(theta/numPoints*2.0*pi);
    y(theta+1) = sin(theta/numPoints*2.0*pi);
end


clf
hold on
%a = axes()
axis([0 60 0 15],'visible','off')
%set(a,'visible','off')
width = 50;
drawCircle(x,y,30,13,totalNumber,1,totalDepth,width);
%print('binomialTree.png','-dpng')


end
