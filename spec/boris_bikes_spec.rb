require 'boris_bikes'

describe DockingStation do
  it 'Docking station responds to release bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).respond_to?(:release_bike)
  end

  it 'Docking station responds to release bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).respond_to?(:working?)
  end

end