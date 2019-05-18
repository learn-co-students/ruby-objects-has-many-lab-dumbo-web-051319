class Artist

  attr_accessor :name

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
    return Song.new(song_name)
  end

  # def song_count
  #   binding.pry
  #   @@all
  #   # Song.all.select {|song| song.artist == self}
  # end

end
