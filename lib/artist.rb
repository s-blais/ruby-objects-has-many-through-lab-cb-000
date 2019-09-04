class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @all << self
  end

  def new_song(name)
    song = Song.new
    song.name = name
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.collect.uniq {|song| song.genre}
  end

end
