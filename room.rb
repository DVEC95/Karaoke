class Room

  attr_reader :room_name, :guests, :songs, :max_capacity

  def initialize(room_name, max_capacity)
    @room_name = room_name
    @guests = []
    @songs = []
    @max_capacity = max_capacity
  end


  def add_guests(guests)
    for guest in guests
      @guests.push(guests)
    end
  end

  def remove_guests()
    @guests.clear
  end

  def add_songs(songs)
    for song in songs
      @songs.push(songs)
    end
  end

end
