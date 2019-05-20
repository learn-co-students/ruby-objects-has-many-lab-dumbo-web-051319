class Song
    attr_accessor :artist, :genre, :name, :song

    @@all = [] 

    def initialize(name) 
        @genre = genre
        @name = name
        @@all << self
        @song = song
    end

    def artist_name
      if self.artist
        self.artist.name
      else 
        nil 
        end
    end

    def self.all 
       @@all 
        
    end
end    
