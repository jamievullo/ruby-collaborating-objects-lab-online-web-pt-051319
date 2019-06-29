# <<<<<<< HEAD
# class MP3Importer
#   attr_reader :path, :files

#   def initialize(path)
#     @path = path
#   end 

#   def files
#     Dir[@path+"/*.mp3"].map {|file| file.split("/").last}
#   end

#   def import
#     files.each {|file| Song.new_by_filename(file) }
#   end
# end 
# =======
class MP3Importer
  
  attr_reader :path
  
  def initialize(filepath)
    @path = filepath
    
  end
  
  def files 
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end
  
  def import 
    self.files.each do |file|
      song = Song.new_by_filename(file)
      #Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
  end

end
>>>>>>> 44b7f513b5ad5f7b6c9cb0edea2c98daa32d4f50
