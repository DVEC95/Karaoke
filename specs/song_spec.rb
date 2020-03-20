require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song.rb')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("Purple Rain", "Prince", 1984)
  end

end
