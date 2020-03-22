require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest.rb')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Ozzy", 15, "Iron Man")
  end

  def test_get_guest_name
    assert_equal("Ozzy", @guest.name)
  end

  def test_get_wallet
    assert_equal(15, @guest.wallet)
  end

  def test_get_fav_song
    assert_equal("Iron Man", @guest.fav_song)
  end

end
