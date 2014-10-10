#####Transfer your Stata .ado files to new workstation
===
Ever wonder how to transfer all your user-created .ado files from one work station to the next?  
Just type ```ssc install adolist``` to download the adolist module.  The module will create a package file for your .ados and allow you to seemlessly transfer to a new system.

_Set working directory_  
```cd "U:/Stata/"```

_Store .ado list in a .pkl (package list file) file in the working directory_  
```adolist store TimAdoPC```

This should generate a linked response in the Stata window. Clicking on the like yields something like:
<p><img src = "https://cloud.githubusercontent.com/assets/5873344/4596248/96e08670-50a1-11e4-882b-9392822e1031.PNG"></p>

_Copy the .pkl to new machine and run_  
```adolist install C:\temp\TimAdoPC```

_For help with the command type the following in your Stata command prompt._  
```help adolist```

