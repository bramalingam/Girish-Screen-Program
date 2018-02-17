Girish-Screen-Program
=====================

Girish's Screen Programs

1) Drag and Drop downloaded folder "Girish-Screen-Program-master" into the  "Command window" of Matlab. This will change the active directory in matlab to the program directory.
2) Program to run : prog_extract_bfopen.m
3) Edit the 'masterdir' variable (line: 12) in the program:,
masterdir = '/Users/bramalingam/Google Drive';

Change this to the path of the master directory which has all the plates, in my case it was the google drive folder.

4) Edit the 'slashtype' variable (line: 13) in the program:
slashtype = '/' (if your OS is Mac (Unix/Linux) OS)
slashtype = '\' (if your OS is Windows OS)

5) type 'prog_extract_bfopen.m" in the "Command window" of Matlab and hit enter.
This should start the program and display the status as follows:
[directory_number wellx_id welly_id fieldnumber]

Wait till all the program stops (might take a day or two).
The program will create output folders like 'Plate6_24 HRS' , 'Plate1_24 HRS' , 'Plate6_36 HRS' etc.
Please upload those folders on Google drive when all the plates have been processed by the program.

