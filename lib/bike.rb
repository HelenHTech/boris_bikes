class Bike
  attr_accessor :broken_bike

  def initialize
    @broken_bike = false
  end

  def not_working?
    !@broken_bike
  end
end