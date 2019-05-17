class Artist
  attr_reader :name
  @@all = []
  def initialize(name = nil)
    @name = name
    @@all << self
  end
  def songs
    Song.all.select{|song| song.artist == self}.compact
  end
  def add_song (song)
    song.artist = self
  end
  def add_song_by_name (song_name)
    song = Song.new(song_name, self)
  end
  def self.song_count
    count = 0
    @@all.each { |artist| count += Song.all.count {|song| song.artist == artist}}
    count
  end
end
