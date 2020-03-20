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

  def remove_guests()
    @guests.clear
  end

  def add_songs(songs)
    for song in songs
      @songs.push(songs)
    end
  end

end
