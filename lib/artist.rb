class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        self.add_song(new_song)
        new_song
    end

    def self.song_count
        # counter = 0
        # @@all.each do |artist_object|
        #     artist_object.songs.each do |song_object|
        #         counter += 1
        #     end
        # end
        # counter

        @@all.collect do |artist_object|
            artist_object.songs
        end.flatten.length
    end

end