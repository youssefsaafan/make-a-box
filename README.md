# make-a-box
Digital Mfg

How To Run "laser-box":
   
This code prompts the user to ask for: Height, Width, Length, Thickness, Bolt Count per Side (1-3), Laser Kerf,Engraving (Enter 1 for Yes or 0 for No)','Number of Petals
Once parameters are chosen, an svg file is ouputted, which displays blueprints for different sized boxes, that are ready to be laser cut.
    
Files Included in This Project:

"laserbox.svg"	--> coordinates for polygon points
Left_Fastener	--> coordinates for left fastener
Left_Hole	--> coordinates for left hole, placed to fit with left fastener
MainInput	--> code that prompts user for input
Middle_Fastener	--> coordinates for middle fastener
Middle_Hole		--> coordinates for middle hole, placed to fit with middle fastener
README.md		--> coordinates for polygon points
Right_Fastener	--> coordinates for polygon points
Right_Hole		--> coordinates for right hole, placed to fit with right fastener
bottom		--> code that creates either 1,2, or 3 holes in bottom plate
c2s	      --> This function inserts a list of numbers into text, creating a polygon in svg.
flower.m		--> coordinates for flower design on side
lay_out		--> This function creates one text/svg code for the whole box.
side		--> coordinates for side points
write_to_file  -->  Write_to_file exports a given text string to a svg file,
which it creates called "laserbox.svg

