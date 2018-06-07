class Post

  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    self.title = title
    @@all << self
  end

  def author_name
    self.author == nil ? nil : self.author.name
  end

  def self.all
    @@all
  end

end
