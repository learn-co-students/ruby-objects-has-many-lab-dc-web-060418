require "pry"
require_relative "artist.rb"
require_relative "song.rb"
require_relative "author.rb"
require_relative "post.rb"

class Author

attr_accessor :name, :posts

@@all = []

  def self.all
    @@all
  end

  def initialize (name_of_Author)
    @name = name_of_Author
    @posts = []
    self.class.all << self
  end

  def add_post(a_Post)
    self.posts << a_Post
    a_Post.author = self
  end

  def add_post_by_title(title_of_new_post)
    new_Post = Post.new(title_of_new_post)
    self.posts << new_Post
    new_Post.author = self
  end

  def self.post_count
    total_posts = 0
    self.all.each {|author| total_posts += author.posts.length}
    total_posts
  end




end
