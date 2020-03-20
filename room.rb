class Room

  attr_reader :room_name, :guests, :songs

  def initialize(room_name)
    @room_name = room_name
    @guests = []
    @songs = []
  end

  def add_guests(guests)
    for guest in guests
      @guests.push(guests)
    end
  end

end
