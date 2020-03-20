require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest.rb')

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Bjork")
  end

  def test_get_guest_name
    assert_equal("Bjork", @guest.name)
  end

end
