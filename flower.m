% ************************************************
% 
% Project: Make-A-Box
% File: Flower
% Class: Digital Manufacturing
% Date: 9th Feb 2017
% Authors: Kyle Bauer, Yadir Lakehal, Youssef Saafan, Adelaide Young
%
% Aim: To output an svg file that can be used on a laser-cutter
% to create a box that just needs to be assembled. The user can 
% input parameters to vary the size of the box.
%
% Flower decorates one side of the box.
%
% *************************************************

function[svgText] = flower(A,B,p)
    theta = -pi:0.01:pi; 
    figure;
    hold on;

    rho= 50*cos(p * theta)+50;
    polar(theta, rho); %polar plot    

    [x,y] = pol2cart(theta,rho); %polar to cartesian
    X=round((x));
    Y=round((y));

    text = ['<path d=" M ',num2str(X(1)*1/150+A),' ',num2str(Y(1)*1/150+B)];
        % This creates the start of the text and origin of path

        for i = 2:length(x)
            text_i = [' L ',num2str(X(i)*1/150+A),' ',num2str(Y(i)*1/150+B)];
            text = [text,text_i];
            i = i+1;
        end
        % This creates lines between x-y coordinates

    svgText=[text,'" stroke="red" stroke-width="0.01" fill="none" />\n'];
        % Outputs complete svg text
    
end
