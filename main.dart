// Implement the Song class
class Song {
  // Properties to store the title, artist, and duration of the song
  String title; // Title of the song
  String artist; // Artist who performed the song
  int duration; // Duration of the song in seconds

  // Constructor to initialize the song's properties
  Song(this.title, this.artist, this.duration);

  // Method to display song details
  void displaySong() {
    // Prints the details of the song
    print('Title: $title, Artist: $artist, Duration: ${duration}s');
  }
}

// Implement the Playlist class
class Playlist {
  // Property to store the name of the playlist
  String name; // Name of the playlist or stage

  // A list to hold the songs in this playlist
  List<Song> songs = []; // List of songs in the playlist

  // Constructor to initialize the playlist with a name
  Playlist(this.name);

  // Method to add a song to the playlist
  void addSong(Song song) {
    // Adds a song to the playlist's song list
    songs.add(song);
  }

  // Method to display all songs in the playlist
  void displayPlaylist() {
    // Prints the name of the playlist
    print('\nPlaylist: $name');
    // Loop through each song in the playlist and display its details
    for (var song in songs) {
      song.displaySong();
    }
  }
}

// Implement the MusicFestival class
class MusicFestival {
  // Property to store the name of the music festival
  String name; // Name of the music festival

  // A list to hold multiple playlists, which represent different stages
  List<Playlist> stages = []; // List of stages (playlists) in the festival

  // Constructor to initialize the festival with a name
  MusicFestival(this.name);

  // Method to add a playlist (stage) to the festival
  void addStage(Playlist playlist) {
    // Adds a playlist (stage) to the list of stages
    stages.add(playlist);
  }

  // Method to display all stages and their playlists
  void displayFestival() {
    // Prints the name of the music festival
    print('\nMusic Festival: $name');
    // Loop through each stage and display the songs in that stage
    for (var stage in stages) {
      stage.displayPlaylist();
    }
  }
}

void main() {
  // Display a welcome message
  print('Welcome to the Rock Legends Music Festival!');

  // Create songs for the first stage "The Beatles Stage"
  Song yesterday = Song('The Only One', 'Lionel Richie', 256);
  Song heyJude = Song('Valentine', 'Jim Brickman and Martina McBride', 196);
  Song letItBe = Song('The Gift', 'Jim Brickman', 225);
  Song comeTogether = Song('Stay', 'Cueshe', 235);
  Song help = Song('Sleeping Child', 'Michael Learn', 210);

  // Create songs for the second stage "Led Zeppelin Stage"
  Song stairwayToHeaven = Song('Stairway to Heaven', 'Led Zeppelin', 482);
  Song wholeLottaLove = Song('Whole Lotta Love', 'Led Zeppelin', 333);
  Song immigrantSong = Song('Immigrant Song', 'Led Zeppelin', 146);
  Song kashmir = Song('Kashmir', 'Led Zeppelin', 515);
  Song blackDog = Song('Black Dog', 'Led Zeppelin', 296);

  // Create songs for the third stage "Queen Stage"
  Song bohemianRhapsody = Song('Bohemian Rhapsody', 'Queen', 354);
  Song anotherOneBitesTheDust = Song('Another One Bites the Dust', 'Queen', 217);
  Song weWillRockYou = Song('We Will Rock You', 'Queen', 122);
  Song weAreTheChampions = Song('We Are The Champions', 'Queen', 179);
  Song somebodyToLove = Song('Somebody to Love', 'Queen', 294);

  // Create playlists (stages) for each band
  Playlist beatlesStage = Playlist('The Beatles Stage'); // Create a playlist for The Beatles
  Playlist zeppelinStage = Playlist('Led Zeppelin Stage'); // Create a playlist for Led Zeppelin
  Playlist queenStage = Playlist('Queen Stage'); // Create a playlist for Queen

  // Add songs to The Beatles stage
  beatlesStage.addSong(yesterday);
  beatlesStage.addSong(heyJude);
  beatlesStage.addSong(letItBe);
  beatlesStage.addSong(comeTogether);
  beatlesStage.addSong(help);

  // Add songs to Led Zeppelin stage
  zeppelinStage.addSong(stairwayToHeaven);
  zeppelinStage.addSong(wholeLottaLove);
  zeppelinStage.addSong(immigrantSong);
  zeppelinStage.addSong(kashmir);
  zeppelinStage.addSong(blackDog);

  // Add songs to Queen stage
  queenStage.addSong(bohemianRhapsody);
  queenStage.addSong(anotherOneBitesTheDust);
  queenStage.addSong(weWillRockYou);
  queenStage.addSong(weAreTheChampions);
  queenStage.addSong(somebodyToLove);

  // Create the music festival
  MusicFestival festival = MusicFestival('Rock Legends Music Festival'); // Create the festival with a name

  // Add stages to the festival
  festival.addStage(beatlesStage); // Add The Beatles stage to the festival
  festival.addStage(zeppelinStage); // Add Led Zeppelin stage to the festival
  festival.addStage(queenStage); // Add Queen stage to the festival

  // Display the festival details
  festival.displayFestival(); // Display all stages and their songs
}
