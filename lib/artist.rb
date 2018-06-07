require "pry"
require_relative "artist.rb"
require_relative "song.rb"
require_relative "author.rb"
require_relative "post.rb"

class Artist

attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs =[]
    self.class.all << self
  end

  def songs=(name_of_Song)
    self.songs.push(name_of_Song)
  end

  def add_song(a_Song)
    self.songs = a_Song
    a_Song.artist = self
  end

  def add_song_by_name (name_of_new_Song)
    new_Song = Song.new(name_of_new_Song)
    self.songs = new_Song
    new_Song.artist = self
  end

  def self.song_count
    total_songs = 0
    
    @@all.each {|artist| total_songs += artist.songs.length}
    total_songs
  end

end
