class Garage
attr_reader :bikes_in_van
  def initialize
    @bikes_in_van = []
  end

  def collect_bike_from_garage(bike)
    @bikes_in_van.push(bike)
  end

  def distribute_bike_to_station(bike)
    @bikes_in_van.each { |each_bike| docking_Station.receive(each_bike) }
    @bikes_in_van = []
    return "Bikes have successfully be distributed to the docking station"
  end

end