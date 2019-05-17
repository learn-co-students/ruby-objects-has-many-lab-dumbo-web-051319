require "pry"
class Post
  attr_accessor :title, :author
  @@all = []
  def initialize(title = nil, author = nil)
    @title = title
    @author = author
    @@all << self
  end
  def author_name
    if self.author != nil
      return self.author.name
    end
  end
  def self.all
    @@all
  end
end
