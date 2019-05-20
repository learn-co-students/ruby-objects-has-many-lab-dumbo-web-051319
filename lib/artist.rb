
class Artist
  attr_accessor :name

  @@all_songs = []

  def initialize(name)
    @name = name
    @@all_songs << self
  end

  def self.all
    @@all_songs
  end
  

end 