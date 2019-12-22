
library(spotifyr)
library(dplyr)

# set up Spotify client ID and client secret
Sys.setenv(SPOTIFY_CLIENT_ID = 'your_client_id')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'your_secret_client_id')

#list of top 10 favorite artist
your_list <- c("your_favorite_artist")

#read API
your_favorite_artist <- get_artist_audio_features('your_favorite_artist')

#get unique album names only
your_favorite_artist %>% select(album_name) %>% unique()


#keep only most related columns
your_favorite_artist <- your_favorite_artist[,c(1,6,7,9:19,26,27,29,30,33,36,37)]

write.csv(your_favorite_artist,"your_favorite_artist_song_list.csv",row.names = FALSE)


