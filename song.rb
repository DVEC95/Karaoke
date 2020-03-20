class Song

  attr_reader :title, :artist, :release

  def initialize(title, artist, release)
    @title = title
    @artist = artist
    @release = release
  end

end
