

class Genre
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
   
   #def songs
    # Song.all.select {|song| song.genre == self}
   #end
   
   
   
   def artists
     self.songs.collect {|song| song.artist}
   end
end
