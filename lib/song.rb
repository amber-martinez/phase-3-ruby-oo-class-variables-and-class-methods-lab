class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)

        @@count += 1
        @@genres << genre
        @@artists << artist

        @name = name
        @artist = artist
        @genre = genre

    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end


end

Song.new("like a virgin", "madonna", "pop")
Song.new("all i really want is you", "the marias", "indie")
Song.new("cariño", "the marias", "indie")
puts Song.artist_count
