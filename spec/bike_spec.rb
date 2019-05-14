require 'boris_bikes'

  describe Bike do
    it 'Is Boris Bike working' do
      bike = Bike.new
      expect(bike).respond_to?(:working?)
    end

  end