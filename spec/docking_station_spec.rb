require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  describe '#release_bike' do
    it 'releases working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when no bikes available' do
      expect{ subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'returns an error when full' do
      docking_station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new}
      expect{subject.dock Bike.new}.to raise_error 'Dock station full'
    end
  end


  it 'docks something' do
    bike = Bike.new
    array = []
    array.push(bike)
    expect(subject.dock (bike)).to eq array
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
end

# # In spec/borisbike_spec.rb
# require "./lib/docking_station"
# describe DockingStation do
#
#   it {is_expected.to respond_to :release_bike}
#  describe
#   it 'releases working bikes' do
#     bike = Bike.new
#     subject.dock(bike)
#     expect(subject.release_bike).to eq bike
#   end
#
#   it {is_expected.to respond_to(:dock).with(1).argument }
#   it 'docks something' do
#     bike = Bike.new
#     array = []
#     array.push(bike)
#     expect(subject.dock(bike.class)).to eq bike
#   end
#
#   it { is_expected.to respond_to(:bike) }
#   it 'returns docked bikes' do
#     bike = Bike.new
#     subject.dock(bike)
#     expect(subject.bike).to eq bike
#   end
#
#   describe '#release_bike' do
#
#     it 'releases a bike' do
#       bike = Bike.new
#       subject.dock(bike)
#       expect(subject.release_bike).to eq bike
#     end
#     it 'raises an error when there are no bikes available' do
#       expect { subject.release_bike }.to raise_error 'No bikes available'
#     end
#   end
#
#   describe '#dock' do
#     # subject.dock(bike)
#     it 'raises an error when full' do
#       20.times { subject.dock Bike.new }
#       expect{ subject.dock Bike.new }.to raise_error 'Docking station full'
#     end
#   end
# end
#   #check if the bike is working
