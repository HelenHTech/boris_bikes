require 'van'

describe Van do

let(:van) { Van.new }
let(:docking_station) { double(:docking_station, :release_broken => [bike]) }
let(:bike) { double(:bike, :not_working? => false) }
let(:garage) { double(:garage, :receive => :bike) }

  context 'Vans to move broken bikes' do
    before(:each) do
      van.take_bike_from_station(docking_station)
    end
    it 'Vans to take broken bikes from docking stations' do
      expect(van.bikes_in_van).to include(bike)
    end

    it 'Vans to deliver broken bikes to garages' do
      van.deliver_bike_to(garage)
      expect(van.bikes_in_van).to_not include(bike)
    end
  end
end