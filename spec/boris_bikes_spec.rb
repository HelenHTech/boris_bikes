require 'boris_bikes'

describe DockingStation do

let(:docking_station) { DockingStation.new }
let(:bike) { Bike.new }

  it 'Can dock a bike' do
    expect(docking_station).to respond_to(:dock_bike)
  end
  
  it 'Can tell if docking station contains a bike' do
    expect{docking_station.release_bike}.to raise_error("No bikes")
  end

  it 'Can tell if docking station is full' do
    expect{(DockingStation::DEFAULT_CAPACITY+1).times{docking_station.dock_bike(bike)}}.to raise_error("Dock contains bike")
  end

  it 'When no capacity is specified, default to value 20' do
    expect(docking_station.capacity).to eq(20)
  end
end

describe Bike do

let(:docking_station) { DockingStation.new }
let(:bike) { Bike.new }

  it 'Docking stations to accept bikes, broken or not' do
    bike.not_working?
    docking_station.dock_bike(bike)
    expect(docking_station.docked_bikes.length).to eq(1)
  end
  
  it 'Docking stations to not release broken bikes' do
    bike.not_working?
    docking_station.dock_bike(bike)
    docking_station.release_bike
    expect(docking_station.docked_bikes.length).to eq(1)
  end

end