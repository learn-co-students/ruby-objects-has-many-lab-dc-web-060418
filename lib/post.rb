require "pry"
require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"
require_relative "../lib/author.rb"
require_relative "../lib/post.rb"

class Post

attr_accessor :title, :author

@@all = []

  def self.all
    @@all
  end

  def initialize(name_of_post)
    @title = name_of_post
    self.class.all << self
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end


end
