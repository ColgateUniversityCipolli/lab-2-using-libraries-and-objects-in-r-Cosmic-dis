# Task 1: Build a Batch File for Data Processing 

# Step 0:
# install.packages("stringr")
library(stringr)

# Step 1:
list.dirs("Music")

# Step 2:
str_count(string = "Music/PeopleStuff/bla", pattern = "/")

sub = c(list.dirs("Music"))
sub.direc = c()

for (direc in sub){
  if (str_count(direc, pattern = "/") == 2){
    sub.direc = append(sub.direc, direc)
  }
}
print(sub.direc)

# Step 3:
files = c()

for (sub in sub.direc){
  file = list.files(sub)
  if (sum(str_count(file, ".wav")) > 0){
    files = append(files, file)
  }

}
print(files)
code.to.process = c()
for (sub in sub.direc){
  music = list.files(sub)
  for (wav in music){
    file = paste(sub, wav, sep = "/")
    # print(file)
    remove = str_sub(wav, 1, length(wav)-6)
    name = str_split(remove, "-")
    new.name = name[[1]][length(name[[1]])]
    artist = name[[1]][length(name[[1]])-1]
    album = str_split(sub, "/")
    #print(album)
    only.album = album[[1]][length(album[[1]])]
    output = paste(artist, "-", only.album, "-", new.name,".json", sep = "")
    #print(output)
    exe = paste("streaming_extractor_music.exe", ' "', new.name,".wav", '" ', '"', output, '"', sep = "")
    code.to.process = append(code.to.process, exe)
    # print(code.to.process)
  }
}
# print(code.to.process)

# Step 4

writeLines(code.to.process, "batfile.txt")

print("but")
# Task 2

# Step 1



# Task 
