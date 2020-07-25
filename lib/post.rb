class Post
  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name if author 
  end

end





# #new
#   is initialized with an argument of a title (FAILED - 11)
#   pushes new instances into a class variable called @@all upon initialization (FAILED - 12)
# @@all
#   is a class variable set to an array (FAILED - 13)
# .all
#   is a class method that returns an array of all post instances that have been created (FAILED - 14)
# #title
#   has a title (FAILED - 15)
# #author
#   belongs to an author (FAILED - 16)
# #author_name
#   knows the name of its author (FAILED - 17)
#   returns nil if the post does not have an author (FAILED - 18)
