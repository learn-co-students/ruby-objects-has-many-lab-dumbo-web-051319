class Author

  attr_accessor :name

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def add_post(post)
    @@count += 1
    return post.author = self
  end

  def add_post_by_title(post_title)
    @@count += 1
    return Post.new(post_title).author = self
  end

  def posts
    return Post.all.select {|post| post.author == self}
  end

  def self.post_count
    return @@count
  end

end
