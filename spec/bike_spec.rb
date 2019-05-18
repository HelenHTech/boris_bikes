require 'boris_bikes'
require 'garage'
require 'van'

describe Bike do

  let(:docking_station) { DockingStation.new }
  let(:bike) { double :bike }
  
    it 'Docking stations to accept bikes, broken or not' do
      allow(bike).to receive(:not_working?).and_return(true)
      bike.not_working?
      docking_station.dock_bike(bike)
      expect(docking_station.docked_bikes.length).to eq(1)
    end
    
    it 'Docking stations to not release broken bikes' do
      allow(bike).to receive(:not_working?).and_return(true)
      bike.not_working?
      docking_station.dock_bike(bike)
      docking_station.release_bike
      expect(docking_station.docked_bikes.length).to eq(1)
    end
  end