class Author

  attr_accessor :name, :posts

  def initialize(name)
    self.name = name
    self.posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    self.posts << new_post
  end

  def self.post_count
    Post.all.length
  end

end
