class Van
attr_reader :bikes_in_van
  def initialize
    @bikes_in_van = []
  end

  def take_bike_from_station(docking_station)
    @bikes_in_van += docking_station.release_broken
  end

  def deliver_bike_to(garage)
    @bikes_in_van.each { |each_bike| garage.receive(each_bike) }
    @bikes_in_van = []
    return "Bikes have successfully be delivered to the garages"
  end
  
end