class Artist


    attr_accessor :name 
    @@allsongs = []


    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end


    def add_song(song)
        song.artist = self
        @songs << song
        @@allsongs << song
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def self.song_count
        @@allsongs.length
    end



end