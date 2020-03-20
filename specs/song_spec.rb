require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song.rb')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("Purple Rain", "Prince", 1984)
  end

  def test_get_song_title
    assert_equal("Purple Rain", @song.title)
  end

  def test_get_song_artist
    assert_equal("Prince", @song.artist)
  end

  def test_get_song_release
    assert_equal(1984, @song.release)
  end

end
