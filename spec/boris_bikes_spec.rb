require 'boris_bikes'

describe DockingStation do
  it 'Docking station responds to release bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'Is bike working' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to respond_to(:working?)
  end

  it 'Can dock a bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(docking_station).to respond_to(:dock_bike)
  end
  
  it 'Can tell if docking station contains a bike' do
    docking_station = DockingStation.new
    docking_station.release_bike
    expect{docking_station.release_bike}.to raise_error("No bikes")
  end

end