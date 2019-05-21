require 'pry'

class Author
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end

def posts #has many posts  
  Post.all 
end 
  
def add_post

end 
  
  def add_post_by_title(title)
    Post.all.title 
  end 
  
  def self.post_count
    self.all.count 
  end 
  
end 






