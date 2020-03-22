class Room

  attr_reader :room_name, :guests, :songs, :max_capacity, :entry_fee

  def initialize(room_name, max_capacity, entry_fee)
    @room_name = room_name
    @guests = []
    @songs = []
    @max_capacity = max_capacity
    @entry_fee = entry_fee
  end


  def add_guests(guests)
    if guests.size <= @max_capacity
      for guest in guests
        if guest.wallet >= @entry_fee
          charge_guest(guest)
          @guests.push(guest)
        end
      end
    end
  end

  def charge_guest(guest)
    guest.wallet -= @entry_fee
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
