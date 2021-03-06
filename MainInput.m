% ************************************************
% 
% Project: Make-A-Box
% File: MainInput
% Class: Digital Manufacturing
% Date: 27th Jan 2017
% Authors: Kyle Bauer, Yadir Lakehal, Youssef Saafan, Adelaide Young
%
% Aim: To output an svg file that can be used on a laser-cutter
% to create a box that just needs to be assembled. The user can 
% input parameters to vary the size of the box.
%
% MainInput takes the users inputs and runs the code to generate
% the svg file of a box.
%
% *************************************************

function MainInput()

  prompt={'Height (in)', 'Wdith (in)','Length (in)','thickness (in)', 'Bolt Count per Side (Enter 1-3)','Laser kerf','Sides (Enter 5 or 6 for a open or closed box, respectively.)'};
  title='Box Maker';
  answer=inputdlg(prompt,title);
  h=str2num(answer{1});
  w=str2num(answer{2});
  l=str2num(answer{3});
  t=str2num(answer{4});
  n=str2num(answer{5});
  LK=str2num(answer{6});
  S=str2num(answer{7});
  % These prompt the user to enter values determining their box choice.
  
  write_to_file(lay_out(t,h,w,l,n))
  % This writes an svg file for the box.
  
end

