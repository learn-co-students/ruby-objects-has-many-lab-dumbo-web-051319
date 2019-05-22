class Artist

  @@all = []

  attr_accessor :song,:name

  def initialize(name)
    @name = name
    @@all << self
    @song = []
  end

  def songs
    # @song
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @song << song
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

end
