require 'pry'

class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end


  def songs
    Song.all.select {|song| song.artist == self}
  end

#   #add_song
#   takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 2)
# #add_song_by_name
#   takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 3)
  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist=(self)
  end


  def self.song_count
    Song.all.count
  end

end
#

# In order to have an artist find all of it's songs, the song class needs to know about all its song instances and a song instance needs to know about the artist class it belongs to.
#

# rspec ./spec/artist_spec.rb:8 # Artist #new is initialized with a name
# rspec ./spec/artist_spec.rb:14 # Artist #name has an attr_accessor for name
# rspec ./spec/artist_spec.rb:20 # Artist #songs has many songs
# rspec ./spec/artist_spec.rb:26 # Artist #add_song takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
# rspec ./spec/artist_spec.rb:35 # Artist #add_song_by_name takes in an argument of a song name, creates a new song with it and associates the song and artist
# rspec ./spec/artist_spec.rb:43 # Artist .song_count is a class method that returns the total number of songs associated to all existing artists
