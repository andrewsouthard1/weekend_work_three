# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
smith_reservation = HotelReservation.new({customer_name: "Smith", date: "2017-04-20", room_number: 273})

p "Room number before running setter: #{smith_reservation.room_number}"
smith_reservation.room_number = 55
p "Room number after running setter: #{smith_reservation.room_number}"

p "amenities before using add_a_fridge #{smith_reservation.amenities}"
smith_reservation.add_a_fridge
p "amenities after using add_a_fridge #{smith_reservation.amenities}"

p "amenities before using add_a_crib #{smith_reservation.amenities}"
smith_reservation.add_a_crib
p "amenities after using add_a_crib #{smith_reservation.amenities}"

p "amenities before using add_a_custom_amenity #{smith_reservation.amenities}"
smith_reservation.add_a_custom_amenity("mini-bar")
p "amenities after using add_a_custom_amenity #{smith_reservation.amenities}"


