# Task 1: Build a Batch File for Data Processing 

# Step 0:
# install.packages("stringr")
# library(stringr)

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
    remove = str_sub(wav, 1, length(wav)-6)
    name = str_split(remove, "-")
    new.name = name[[1]][length(name[[1]])]
    print(new.name)
    # output = 
  }
}
  
