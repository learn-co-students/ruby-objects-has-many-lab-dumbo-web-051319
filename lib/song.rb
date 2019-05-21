class Song 
  
  attr_accessor :name, :artist 
                  #name method has a name 
                  #artist method belongs to artist 
  
  @@all = []      #class variable set to an array 
  
  def initialize(name) 
    #new is initalized with an argument of name 
    @name = name    
    @@all << self 
  end 
  
  def self.all  #class method taht returns an array of all song instances 
    @@all
  end 
  
  def artist_name 
  self.artist == nil ? nil : self.artist.name
  #
  end 
  
end 