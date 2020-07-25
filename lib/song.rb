require "pry"

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def artist_name
    # binding.pry
    return @artist? @artist.name : nil
    # if @artist
    #   @artist.name
    # else
    #   nil
    # end
  end

end
