library(rtweet)

## store api keys (these are fake example values; replace with your own keys)
api_key <- "dOJFngxhkbcStKYjSjCYtsdo9"
api_secret_key <- "PimFPl7Ahp9NKr3quSdn1kQZfvdIe6PLbatPhIxot700HrmfVW"

## authenticate via web browser
token <- create_token(
  app = "CovidBedWB",
  consumer_key = api_key,
  consumer_secret = api_secret_key,
  access_token = "68420162-eEFPy7QbKpNXl4MNSOYgBOO7CW6FbMsCowU1D3QWj",
  access_secret = "ROlKgdbK41W1AlaYx0yFmQdC2EWhMFNZPisfDIj0hExdk")


tweet_dataTable <- function(xTable,dateString) {
  token
  for (i in 1:nrow(xTable)) {
    txt <- paste(xTable[i, "Vacancy"],
                 " #covidbed are available in ",
                 xTable[i, "Hospital"]," #",xTable[i, "District"],
                 " West Bengal \n Source:https://www.wbhealth.gov.in/ ",
                 dateString,sep = "")
    if (nchar(txt) < 280) {
      # print(txt)
      post_tweet(txt)
    }
  }
}
                                               
