require 'van'

describe Van do

let(:van) { Van.new }
let(:docking_station) { double(:docking_station, :release_broken => [bike]) }
let(:bike) { double(:bike, :not_working? => false) }
let(:garage) { double(:garage, :receive => :bike) }

  it 'Vans to collect working bikes from garages and distribute them to docking stations' do
  end

end