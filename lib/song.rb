

class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  
  
  def initialize(name, artist, genre)
    @name = name
    artist.songs << self
    @artist = artist
    
    @genre = genre
    genre.songs << self
    save
    
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end

  
  
end
