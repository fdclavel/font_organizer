library(tidyverse)

# script must be saved to same directory as fonts folders
curdir <- getwd()

# create single fonts folder for all raw files
dir.create(path=paste0(curdir,"/(ALL_FONTS)"))

# specify as target directory
tgtdir <- paste0(curdir,"/(ALL_FONTS)")

# list all otf and ttf files (with full paths) inside the parent folder and subfolders
fonts_list = list.files(path=curdir, pattern=".otf$ |.ttf$", recursive=T, full.names = T)

# extract font files from folders and save to single target folder
for(i in 1:length(fonts_list)){
  file.copy(from = fonts_list[i], to = tgtdir)
}
