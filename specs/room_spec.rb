require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room.rb')

class TestRoom < Minitest::Test

  def setup
    @room = Room.new("Bowie Room")
  end

end
