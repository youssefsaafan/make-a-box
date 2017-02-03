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

