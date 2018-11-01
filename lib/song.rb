class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    array = []
    @@artists.each do |artis|
      if !array.include?(artis)
        array << artis
      end
    end
    array
  end

  def self.genres
    array = []
    @@genres.each do |gen|
      if !array.include?(gen)
        array << gen
      end
    end
    array
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if !hash.key?(genre)
        hash[genre] = 1
      else
        hash[genre] += 1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if !hash.key?(artist)
        hash[artist] = 1
      else
        hash[artist] += 1
      end
    end
    hash
  end

end
