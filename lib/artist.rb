require "pry"

class Artist

  attr_accessor :name

  @@song_arr = []

  def initialize(name)
    return @name = name
  end

  def songs
    return Song.all.select {|song| song.artist = self}
  end

  def add_song(song)
    return add_song_by_name(song).artist = self
  end

  def add_song_by_name(song_name)
    @@song_arr << song_name
    return Song.new(song_name)
  end

  def self.song_count
    # binding.pry
    return @@song_arr.length
  end

end
