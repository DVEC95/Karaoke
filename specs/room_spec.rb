require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < Minitest::Test

  def setup
    @room = Room.new("Bowie")
  end

  def test_get_room_number
    assert_equal("Bowie", @room.room_name)
  end

  def test_get_guests
    assert_equal(0, @room.guests.size)
  end

  def test_get_songs
    assert_equal(0, @room.songs.size)
  end

end
