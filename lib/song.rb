require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  # @@all = []
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << self.genre
    @@artists << self.artist
    @@count += 1
  # @@all << self
end
# def self.all
#   @@all
# end
def self.count
@@count
end

def self.genre_count
  genre_hash = {}
  @@genres.select do |genre|
    genre_hash[genre] = @@genres.count(genre)
end
genre_hash
end

def self.artist_count
  artist_hash = {}
  @@artists.select do |artist|
    artist_hash[artist] = @@artists.count(artist)
end
artist_hash
end

def self.artists
  @@artists.uniq
end
def self.genres
  @@genres.uniq
end



# def self.genres
# Song.all.map do |song|
#   song.genre
#  end
# end




end
song1 = Song.new("prpr", "eminem", "rap")
song2 = Song.new("prasr", "JZ", "pop")
song3 = Song.new("prfvd", "eKM", "hop")
song4 = Song.new("pcc", "Sting", "rap")
  # binding.pry
0
