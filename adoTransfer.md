#####Transfer your Stata .ado files to new workstation.
===
Ever wonder how to transfer all your user-created .ado files from one work station to the next?  Just type ```ssc install adolist``` to download the adolist module.  The module will create a package file for your .ados which can be transferred to a new systems with a few simple keystrokes.

_Set working directory_  
```cd "U:/Stata/"```

_Store .ado list in a .pkl (package list file) file in the working directory_  
```adolist store TimAdoPC```

_Copy the .pkl to new machine and run_  
```adolist install C:\temp\TimAdoPC```
