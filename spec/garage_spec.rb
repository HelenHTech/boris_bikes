require 'garage'

describe Garage do

  let (:garage) { Garage.new }
  let (:bike) { double(:bike, :not_working? => true) }
  let (:shiny_bike) { double(:bike, :not_working? => true) }
  
  it 'Vans to take broken bikes from docking stations and deliver them to garages to be fixed' do
  end
  
end