class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def songs
       Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(name)
    song1 = Song.new(name)
    add_song(song1)
  end
  
  def song_count
    counter = 0
    Song.all.each do |song|
      counter += 1
    end
  end


end