class Author
  attr_reader :name
  @@all = []
  def initialize(name = nil)
    @name = name
    @@all << self
  end
  def posts
    Post.all.select{|post| post.author == self}.compact
  end
  def add_post (post)
    post.author = self
  end
  def add_post_by_title (post_title)
    post = Post.new(post_title, self)
  end
  def self.post_count
    count = 0
    @@all.each { |author| count += Post.all.count {|post| post.author == author}}
    count
  end
end
