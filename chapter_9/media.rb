module AcceptsComments
  def comments
@comments = @comments || []
      end
  def add_comment(comment)
    comments << comment
  end
end
class Clip
  def play
    puts "Now playing #{object_id}"
  end
end

class Video < Clip
  include AcceptsComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptsComments
  def show
    puts "Now Showing #{object_id}"
  end
end
video = Video.new
video.add_comment("This video dope y'all")
video.add_comment("Watch it!")
song = Song.new
song.add_comment("Listen to this one")
photo = Photo.new
photo.show
photo.add_comment("This photo is so dope!")

puts video.comments, song.comments, video.play, song.play,photo.comments

