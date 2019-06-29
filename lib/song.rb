# <<<<<<< HEAD
# class Song
#   attr_accessor :name, :artist

#   def initialize(name)
#     @name = name
#   end

#   def self.new_by_filename(filename)
#     artist_name, song_name, extra = filename.split(" - ")
#     song = self.new(song_name)
#     artist = Artist.find_or_create_by_name(artist_name)
#     artist.add_song(song)
#   end
# end 
# =======
# require "pry"

class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end
  
  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song  = self.new(split_name[1]) 
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.add_song(song)
    song 
    #binding.pry
  end
  
end
>>>>>>> 44b7f513b5ad5f7b6c9cb0edea2c98daa32d4f50
