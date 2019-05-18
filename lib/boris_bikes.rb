class DockingStation
  attr_reader :docked_bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @docked_bikes = []
  end

  def release_bike
    raise "No bikes" if empty?
    return @docked_bikes.pop if @broken_bike
  end

  def dock_bike(bike)
    raise "Dock contains bike" if full?
    @docked_bikes << bike
  end

  private
  def full?
    @docked_bikes.length >= DEFAULT_CAPACITY 
  end
  
  
  def empty?
    @docked_bikes.empty?
  end
end