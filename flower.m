theta = -pi:0.01:pi; 
figure;
hold on;

         
rho= 50*cos(p * theta)+50;
polar(theta, rho) %polar plot    




[x,y] = pol2cart(theta,rho); %polar to cartesian
X=round((x));
Y=round((y));


text = ['<path d=" M ',num2str(X(1)+100),' ',num2str(Y(1)+100)];
    % This creates the start of the text.

    for i = 2:length(x)
        text_i = [' L ',num2str(X(i)+100),' ',num2str(Y(i)+100)];
        text = [text,text_i];
        i = i+1;
    end
    
svgText=[text,'" stroke="blue" stroke-width="1" fill="none" />'];

