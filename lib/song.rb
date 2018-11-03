require "pry"
class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    song_genre = self.genre
    @@genres << song_genre
    song_artist = self.artist
    @@artists << song_artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) {|type, value| type[value] += 1 ; type}

  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) {|name, value| name[value] += 1 ; name}
  end

end
