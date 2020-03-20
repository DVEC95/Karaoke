require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room.rb')

class TestRoom < Minitest::Test

  def setup
    @room = Room.new("Bowie")
  end

  def test_get_room_number
    assert_equal("Bowie", @room.room_name)
  end

end
