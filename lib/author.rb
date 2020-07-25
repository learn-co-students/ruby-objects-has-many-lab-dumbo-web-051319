require 'pry'

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    author_posts = Post.all.select { |post|
      post.author.name == self.name
    }.each {|post| post.title}
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end

  def self.post_count
    Post.all.count
  end
end
