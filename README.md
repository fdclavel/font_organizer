# Font (or any other file type) Organizer

## Author: Fred Clavel
## Date: 2021 Nov 12
## Purpose: 
Organize loose files of the same type within multiple subfolders up to a single parent folder.


---
### About this repo

I initially created this R script as a quick process to organize and export my downloaded fonts from an old machine to a new machine. The problem was, My file structure was pretty disorganized due to years of random unplanned usage. I wrote this script to find all the font files inside my folders and copy all of them to a single parent folder that I could easily move to another system for a mass install. 

The script can be used to help remedy a similar situation for any file type. For example, say you had a bunch of .ext files you wanted to organize into a single folder -  This script allows you to take a file system with those .ext files scattered around like this:

`PARENT`  
`|-- Folder1`  
`|   |-- File1.ext`  
`|   |-- File2.ext`  
`|   |-- File3.ext`  
`|   └-- File4.ext`  
`|-- Folder2`  
`|-- Folder3`  
`|   └-- File5.ext`  
`|-- Folder4`  
`|   └-- Folder4.1`  
`|       └-- File6.ext`  
`|   |-- File3.ext`  
`└-- File7.ext`  

And copy all those scattered .ext files to one new folder, to turn it into this instead:

`PARENT`  
`|-- NEW_SINGLE_FOLDER`  
`|   |-- File1.ext`  
`|   |-- File2.ext`  
`|   |-- File3.ext`  
`|   |-- File4.ext`  
`|   |-- File5.ext`  
`|   |-- File6.ext`  
`|   └-- File7.ext`  
`|-- Folder1`  
`|-- Folder2`  
`|-- Folder3`  
`|-- Folder4`  
`└-- File7.ext`  

### Caveats/Things to keep in mind

1. The script can be modified easily to accommodate any file types (it is configured to find .otf and .ttf files by default). Just change the pattern options on line 13 (multiple options should be separated by `|` characters). The name of the object doesn't matter, but feel free to change from fonts_list to whatever makes more sense for you. In the end, the script will still do the same thing irrespective of this object name.

2. The script must be run from inside the parent folder, otherwise it will end up looking in the wrong places for file types in subfolders.

3. Depending on the number of files that exist and the size of those files, this script can either take a few seconds or a massively long time to run. It is designed to **COPY** files to a new single directory (it does not MOVE them). If for example you run this with a match to .mp4 video file types, and you run it inside a folder that collectively contains dozens or even hundreds of video files, this script will take a long time to run and will create very large files on your system.