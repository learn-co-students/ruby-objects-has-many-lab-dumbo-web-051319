require 'pry'
class Artist 
    attr_accessor :name, :title, :songs
    @@song_count = 0  

    def initialize(name)
        @name = name
        @songs = [] 
        @title = title
    end

   def add_song(song)
        @songs << song
        song.artist = self
        @@song_count += 1
   end 

  
   def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count += 1

   end
#    binding.pry


   def self.song_count
       @@song_count
   end
end 
# binding.pry