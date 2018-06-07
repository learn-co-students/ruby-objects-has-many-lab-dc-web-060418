class Song

  @@all = []

  attr_accessor :artist, :name

  def initialize(name)
    @@all << self
    self.name = name

  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

  def self.all
    @@all
  end

end
