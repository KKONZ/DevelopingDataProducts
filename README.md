# DevelopingDataProducts
DevelopingDataProducts for data science specialization of Johns Hopkins through Coursera. This application is pretty straight foward. It plots the log count of days a chart was on Spotify's daily 200 most streamed tracks for each given day since 5/1/2015. The y coordinates are the log number of streams total for a given track while it was on the top 200 daily charts on Spotify. See my repo SpotifyR, https://github.com/KKONZ/SpotifyR,  to see how the data was collected. This app calls that data from an .RData image where the models have been trained ahead of time. The presentation shows more robust interpretations of the data.

# Shiny App documentation
*Adjust the lcountofdays in the slider to get a prediction of the log sum of streams a given track had.
*The predicted score is just from a simple linear regression in which lsumofstreams is predicted from lcountofdays.
*The data illustrated is the training set for the model, see more robust modeling in the presentation.
