
class Artist
    attr_accessor :name, :songs
    @@total_songs =0
    def initialize (name)
        @name = name 
        @songs = []
    end 
    def add_song(song)
        self.songs << song
        self.class.total_songs = self.class.total_songs + 1
        song.artist = self
    end
    def add_song_by_name (name)
        song = Song.new(name)
        song.artist = self
        self.class.total_songs = self.class.total_songs + 1
        self.songs << song

    end 

    def self.total_songs 
        @@total_songs
    end

    def self.total_songs= (total_songs) 
        @@total_songs = total_songs
    end

    def self.song_count
        self.total_songs
    end 
end 