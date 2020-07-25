class Artist 
  
  attr_accessor :name   #name has an attr_accessor for name 
                        #attr_accessor works with def initialize
  def initialize(name)  #new - is initialized with a name 
    @name = name 
    @songs = []         #this sets up the "has many" relationship                     with song class
  end 
  
  def songs             #songs method has many songs 
    @songs 
  end 
  
  def add_song(song)
    song = Song.new(song)
    @song << song 
    song.artist = self 
  end 
  
  #INSTRUCTIONS FOR ADD_SONG METHOD 
  #take in an argument of a song name 
  #creates a new song with it (so refers to the Song.new)
  #associates song with artist
end 