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
    track = str_split(remove, "-")
    new.track = name[[1]][length(name[[1]])]
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
# Task 2

# Step 0
# install.packages("jsonlite")
# library(jsonlite)

# Step 1
list.files()
json.files = c()
for (file in list.files()){
  if (str_count(string = file, pattern = ".json") > 0){
    # json.files = append(json.files, file)
    split.json = str_split(file, "-")
    track = split.json[[1]][length(split.json[[1]])]
    json.track = str_sub(track, start = 1, end = length(track)-7)
    json.album = split.json[[1]][length(split.json[[1]])-1]
    json.artist = split.json[[1]][length(split.json[[1]])-2]
    print(json.track)
    print(json.album)
    print(json.artist)
    
  }
}


# Step 2

file.data = fromJSON("The Front Bottoms-Talon Of The Hawk-Au Revoir (Adios).json")
names(file.data)
# Step 3

average_loudness = file.data$"lowlevel"$"average_loudness"
cat("Average_Loudness: ", average_loudness)

spectral_energy_mean = file.data$"lowlevel"$"spectral_energy"$"mean"
cat("Mean: ", spectral_energy_mean)

bpm = file.data$"rhythm"$"bpm"
cat("BPM: ", bpm)

key_key = file.data$"tonal"$"key_key"
cat("Key_key: ", key_key)

length = file.data$"metadata"$"audio_properties"$"length"
cat("Length: ", length)



