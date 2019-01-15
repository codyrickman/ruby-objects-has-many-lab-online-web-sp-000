class Artist
  attr_accessor :name, :genre
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
  end
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
  def songs
    @songs
  end
end
