###### Transfer .ado files to new workstation.
===
Ever wonder how to transfer all your user-created .ado files from one work station to the next?  Just type ```ssc install adolist``` to download the adolist module.  The module will create a package file for your .ados which can be transferred to a new systems with a few simple keystrokes.

```* Set working directory
cd "U:/Stata/"```

```* STore .ado list in a .pkl (package list file) file in the working directory
adolist store TimAdoPC```

```* Copy the .pkl to new machine and run
adolist install C:\temp\TimAdoPC```
