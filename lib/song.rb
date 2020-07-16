require 'pry'
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count= {}
    @@artist_count = {}

    attr_accessor :genre_count, :artist, :artist_count
    attr_reader :name, :artist, :genre, :count

    def initialize(name, artist, genre)
        @name = name 
        @genre = genre
        @artist = artist
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        @@genres.each do |genre|
            @@genre_count[genre] = @@genres.count(genre)
        end
        @@genre_count
    end

    def self.artist_count
        @@artists.each {|artist|
            @@artist_count[artist] = @@artists.count(artist)}
        @@artist_count
    end

end
