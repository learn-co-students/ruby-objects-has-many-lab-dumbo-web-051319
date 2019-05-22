class Post

  @@all = []

  attr_accessor :author,:title,:name

  def initialize(title,author= nil)
    @title = title
    @author = author
    @@all << self
  end

  def self.all
      @@all
    end

    def author_name
       self.author.name
    end



end
