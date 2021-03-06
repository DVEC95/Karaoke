require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class TestRoom < Minitest::Test

  def setup

    @guest_1 = Guest.new("Elvis", 10, "All Shook Up")
    @guest_2 = Guest.new("Kurt", 3, "Smells Like Teen Spirit")
    @guest_3 = Guest.new("Prince", 8, "Purple Rain")

    @guests = [@guest_1, @guest_2, @guest_3]

    @song_1 = Song.new("All Shook Up", "Elvis Presley", 1957)
    @song_2 = Song.new("Eye of the Tiger", "Survivor", 1982)
    @song_3 = Song.new("Like a Prayer", "Madonna", 1989)
    @songs = [@song_1, @song_2, @song_3]

    @room = Room.new("Bowie", 5, 5)

  end

  def test_get_room_name
    assert_equal("Bowie", @room.room_name)
  end

  def test_max_capacity
    assert_equal(5, @room.max_capacity)
  end

  def test_get_guests
    assert_equal(0, @room.guests.size)
  end

  def test_get_songs
    assert_equal(0, @room.songs.size)
  end

  def test_add_guests
    @room.add_guests(@guests)
    assert_equal(2, @room.guests.size)
  end

  def test_remove_guests
    @room.add_guests(@guests)
    assert_equal(2, @room.guests.size)
    @room.remove_guests
    assert_equal(0, @room.guests.size)
  end

  def test_add_songs
    @room.add_songs(@songs)
    assert_equal(3, @room.songs.size)
  end

  def test_too_many_guests
    guest_4 = Guest.new("Ozzy", 8, "Iron Man")
    guest_5 = Guest.new("Brian", 7, "God Only Knows")
    guest_6 = Guest.new("Ringo", 6, "Hey Jude")
    @guests = [@guest_1, @guest_2, @guest_3, guest_4, guest_5, guest_6]

    @room.add_guests(@guests)
    assert_equal(0, @room.guests.size)
  end

  def test_guest_has_enough_money
    @room.add_guests(@guests)
    assert_equal(2, @room.guests.size)
  end

  def test_guest_is_charged
    @room.add_guests(@guests)
    assert_equal(5, @guests[0].wallet)
    assert_equal(3, @guests[1].wallet)
  end

end
