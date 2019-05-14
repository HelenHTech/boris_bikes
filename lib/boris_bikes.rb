class DockingStation
  attr_reader :docked_bike
  def initialize
    @docked_bike = 1
  end
  def release_bike
    if @docked_bike == 1
      @docked_bike -= 1
      Bike.new      
    else 
      raise "No bikes"
    end
  end
  def dock_bike

  end
end

class Bike
  def working?

  end
end

# bike = Bike.new
# bike = docking_station.release_bike
# bike.working?