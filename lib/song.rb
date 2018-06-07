require "pry"
require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"
require_relative "../lib/author.rb"
require_relative "../lib/post.rb"


class Song
  attr_accessor :name, :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(name_of_Song)

    @name = name_of_Song
    self.class.all << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end




end
