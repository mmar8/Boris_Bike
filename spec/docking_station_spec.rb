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
    it 'default capacity eq 20' do
      docking_station = DockingStation.new
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY) 
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
