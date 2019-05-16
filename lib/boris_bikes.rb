class DockingStation
  attr_reader :docked_bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @docked_bikes = []
  end

  def release_bike
    raise "No bikes" if empty?
    docked_bikes.each_with_index { |bike, index| raise "Bikes broken" if docked_bikes.delete_at(index) ; return bike if bike.working }
  end

  def dock_bike(bike, working = true)
    raise "Dock contains bike" if full?
    bike.working if !working
    @docked_bikes << bike
    return "Bike is docked"
  end

  private
  def full?
    @docked_bikes.length >= DEFAULT_CAPACITY 
  end

  def empty?
    @docked_bikes.empty?
  end
end

class Bike
  attr_reader :working

  def initialize(work = true)
    @working = work
  end

  def working
    @working
  end

end