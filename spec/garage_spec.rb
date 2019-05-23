require 'garage'

describe Garage do

  let (:garage) { Garage.new }
  let (:bike) { double(:bike, :not_working? => true) }
  let(:docking_station) { double(:docking_station, :recieve => [bike]) }

    it 'Vans to collect working bikes from garages' do
      garage.collect_bike_from_garage(bike)
      expect(garage.bikes_in_van).to include(bike)
    end

    it 'Vans to distribute working bikes to docking stations' do
      garage.distribute_bike_to_station(bike)
      expect(garage.bikes_in_van).to_not include(bike)
    end
  
end