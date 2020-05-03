

class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    name = Song.new(name, self, genre)
  end
  
  #def songs #this uses brute force that is ineficient. Look at line 11
  #  Song.all.select {|song| song.artist == self}
  #end
  
  
  def genres
    self.songs.collect {|song| song.genre}
  end
end