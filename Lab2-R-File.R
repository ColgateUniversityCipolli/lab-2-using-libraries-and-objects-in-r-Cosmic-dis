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
# for (direc in list.dirs("Music")){
#   if (str_count("Music/bla/bla", "/") ==2{
#     
#   }
# }
  
