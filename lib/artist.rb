class Artist
  attr_accessor :name, :genre
  def initialize(name)
    @name = name
    @songs = []
    @@songs = 0
  end
  def add_song(song)
    @songs << song
    song.artist = self

  end
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
    @@songs += 1
  end
  def songs
    @songs
  end
  def self.song_count
    @@songs
  end
end
