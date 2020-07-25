class Song
  @@all = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist.name if artist
  end

end

 #  #new
 #   is initialized with an argument of a name (FAILED - 19)
 #   pushes new instances into a class variable called @@all upon initialization (FAILED - 20)
 # @@all
 #   is a class variable set to an array (FAILED - 21)
 # .all
 #   is a class method that returns an array of all song instances that have been created (FAILED - 22)
 # #name
 #   has a name (FAILED - 23)
 # #artist
 #   belongs to an artist (FAILED - 24)
 # #artist_name
 #   knows the name of its artist (FAILED - 25)
 #   returns nil if the song does not have an artist (FAILED - 26)
