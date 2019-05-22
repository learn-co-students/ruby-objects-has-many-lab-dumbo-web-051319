class Song

  @@all = []

  attr_accessor :artist,:name,:title

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
      self.artist.name
  end


end
