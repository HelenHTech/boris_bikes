class DockingStation
  attr_reader :docked_bikes
  def initialize
    @docked_bikes = []
  end
  def release_bike
    if @docked_bikes.length > 0
      @docked_bikes.pop   
    else
      raise "No bikes"
    end
  end
  def dock_bike(bike)
    if @docked_bikes.length >= 20
      raise "Dock contains bike"
    else
      @docked_bikes << bike
    end
  end
end

class Bike
  def working?

  end
end

# bike = Bike.new
# bike = docking_station.release_bike
# bike.working?