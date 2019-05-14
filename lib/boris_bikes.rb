class DockingStation
  attr_reader :docked_bikes
  def initialize
    @docked_bikes = []
  end
  def release_bike
    raise "No bikes" if empty?
    @docked_bikes.pop
  end
  def dock_bike(bike)
    raise "Dock contains bike" if full?
    @docked_bikes << bike
  end
  private
  def full?
    @docked_bikes.length >= 20 
  end
  def empty?
    @docked_bikes.empty?
  end
end

class Bike
  def working?

  end
end

# bike = Bike.new
# bike = docking_station.release_bike
# bike.working?