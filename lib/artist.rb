# <<<<<<< HEAD
# class Artist
#   attr_accessor :name
#   @@all = []

#   def initialize(name)
#     @name = name
#     @songs= []
#   end

#   def add_song(song)
#     @songs << song
#     song.artist = self
#     song
#   end

#   def songs
#     @songs
#   end

#   def save
#     @@all << self
#     self
#   end

#   def self.all
#     @@all
#   end

#   def self.find_or_create_by_name(name)
#     self.all.detect {|artist| artist.name == name} || Artist.new(name).save
#   end

#   def print_songs
#     self.songs.each {|song| puts song.name} 
#   end
# end 
# =======
class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect { |artist| artist.name == name } || Artist.new(name)
  end 
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
end
>>>>>>> 44b7f513b5ad5f7b6c9cb0edea2c98daa32d4f50
