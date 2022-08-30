class Song
    attr_accessor :artist, :genre, :name
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @artist = artist
        @name = name
        @genre= genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end 