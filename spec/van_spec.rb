require 'boris_bikes'
require 'garage'
require 'van'

describe Van do
  
let(:docking_station) { DockingStation.new }
let(:bike) { Bike.new }
let(:van) { Van.new }
let(:garage) { Garage.new }

  it 'Vans to collect working bikes from garages and distribute them to docking stations' do
  end

end