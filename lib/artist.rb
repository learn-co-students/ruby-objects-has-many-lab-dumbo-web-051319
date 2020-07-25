require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
    Song.all << song

  end

  def add_song_by_name(song)
      new_song = Song.new(song)
      add_song(new_song)
    end

     def self.song_count
       # binding.pry
       Song.all.uniq.count
    end


end
