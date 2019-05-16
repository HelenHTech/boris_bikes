require 'boris_bikes'

describe DockingStation do

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

describe Bike do

  # it 'Report a bike as broken when returning to docking station' do
  #   bike = Bike.new
  #   bike.working = false
  #   expect{bike.working}.to raise_error("Bikes broken")
  # end

  it 'Docking stations to accept bikes, broken or not' do
    docking_station = DockingStation.new
    bike = Bike.new
    bike.working
    expect(docking_station.dock_bike(bike, false)).to eq("Bike is docked")
  end

  it 'Docking stations to not release broken bikes' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.release_bike
    bike.working
    expect{docking_station.working}.to raise_error("Bikes broken")
  end

end