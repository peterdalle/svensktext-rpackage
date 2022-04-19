# Code to prepare datasets, downloading them and making them available
# as svensktext::stopwords etc.

library(tidyverse)
library(usethis)


data_rootpath <- function() {
  "https://raw.githubusercontent.com/peterdalle/svensktext/master/"
}

data_rootpath_localhost <- function() {
  "../../../"
}

load_file <- function(file, header=TRUE, sep=",", col_names=NULL, path=data_rootpath()) {
  file <- paste0(path, file)
  df <- read.csv(file, header=header, sep=sep, encoding="UTF-8", stringsAsFactors=FALSE)
  if (!is.null(col_names)) {
    names(df) <- col_names
  }
  df
}

load_emotion <- function(emotion) {
  df <- load_file(paste0("emotioner/", emotion, ".csv"))
  df$emotion <- emotion
  relocate(df, emotion, word, intensity)
}


# Prepare ----------------------------------------------------------------------

emotions <- rbind(
  load_emotion("anger"),
  load_emotion("anticipation"),
  load_emotion("disgust"),
  load_emotion("fear"),
  load_emotion("joy"),
  load_emotion("sadness"),
  load_emotion("surprise"),
  load_emotion("trust"))

stopwords <- load_file("stoppord/stoppord.csv", header=FALSE, col_names="word")
lemma <- load_file("lemma/lemmatization.csv")
corona <- load_file("lexikon/smitta-corona.csv")
moralfoundations <- load_file("moral/moral.csv")
sentiment <- load_file("sentiment/sentimentlex.csv")
jobs <- load_file("yrken/vocations.csv")
name_lastname <- load_file("namn/efternamn.csv")
name_women <- load_file("namn/fornamn-kvinnor.csv")
name_men <- load_file("namn/fornamn-man.csv")
name_women_tilltalsnamn <- load_file("namn/tilltalsnamn-kvinnor.csv")
name_men_tilltalsnamn <- load_file("namn/tilltalsnamn-man.csv")
nationalities <- load_file("nationaliteter/nationaliteter.csv")
governmentorganizations <- load_file("organisationer/myndigheter.tsv", sep="\t")
eu <- load_file("organisationer/eu.csv")
countries <- load_file("platser/lander.csv")
countrycodes <- load_file("platser/landskoder.csv")
cities <- load_file("platser/ortsnamn.csv")
roads <- load_file("platser/vagar.csv")
kommuner <- load_file("platser/kommuner.csv")
lan <- load_file("platser/lan.csv")
currency <- load_file("platser/valutor.csv")
months <- load_file("tider/manader.csv")
timeperiods <- load_file("tider/tidsperioder.csv")
weekdays <- load_file("tider/veckodagar.csv")
weekends <- load_file("tider/helgdagar.txt", header=FALSE, col_names="day")


# Save (name --> name.rda) -----------------------------------------------------

use_data(stopwords, overwrite=TRUE)
use_data(lemma, overwrite=TRUE)
use_data(corona, overwrite=TRUE)
use_data(moralfoundations, overwrite=TRUE)
use_data(sentiment, overwrite=TRUE)
use_data(jobs, overwrite=TRUE)
use_data(name_lastname, overwrite=TRUE)
use_data(name_women, overwrite=TRUE)
use_data(name_men, overwrite=TRUE)
use_data(name_women_tilltalsnamn, overwrite=TRUE)
use_data(name_men_tilltalsnamn, overwrite=TRUE)
use_data(nationalities, overwrite=TRUE)
use_data(governmentorganizations, overwrite=TRUE)
use_data(eu, overwrite=TRUE)
use_data(countries, overwrite=TRUE)
use_data(countrycodes, overwrite=TRUE)
use_data(cities, overwrite=TRUE)
use_data(roads, overwrite=TRUE)
use_data(kommuner, overwrite=TRUE)
use_data(lan, overwrite=TRUE)
use_data(currency, overwrite=TRUE)
use_data(months, overwrite=TRUE)
use_data(timeperiods, overwrite=TRUE)
use_data(weekdays, overwrite=TRUE)
use_data(weekends, overwrite=TRUE)
