require "pry"
class Author
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    @@all
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(post_title)
    post1 = Post.new(post_title)
    self.add_post(post1)
  end

  def  self.post_count
    Post.all.count
    # binding.pry
  end
end
