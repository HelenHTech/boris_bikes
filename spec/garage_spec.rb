require 'garage'

describe Garage do

  let (:garage) { Garage.new }
  let (:bike) { double(:bike, :not_working? => true) }
  let (:shiny_bike) { double(:bike, :not_working? => true) }


  it 'Vans to collect working bikes from garages' do

  end

  it 'Vans to distribute working bikes to docking stations' do

  end
  
end