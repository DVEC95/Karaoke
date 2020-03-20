class Room

  attr_reader :room_name

  def initialize(room_name)
    @room_name = room_name
    @guests = []
    @songs = []
  end

end
