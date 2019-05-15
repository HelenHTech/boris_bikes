require 'boris_bikes'

describe DockingStation do
  it 'Docking station responds to release bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'Is bike working' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it 'Can dock a bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:dock_bike)
  end
  
  it 'Can tell if docking station contains a bike' do
    docking_station = DockingStation.new
    expect{docking_station.release_bike}.to raise_error("No bikes")
  end

  it 'Can tell if docking station is full' do
    docking_station = DockingStation.new
    bike = Bike.new
    expect{(DockingStation::DEFAULT_CAPACITY+1).times{docking_station.dock_bike(bike)}}.to raise_error("Dock contains bike")
  end

  it 'When no capacity is specified, default to value 20' do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq(20)
  end

end