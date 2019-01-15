class Artist
  attr_accessor :name, :genre
  def initialize
    @songs = []
  end
  def add_song(song)
    @songs << song
    song.artist = self
  end
end
