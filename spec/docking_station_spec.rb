# In spec/borisbike_spec.rb
require "./lib/docking_station"
describe DockingStation do
  #it 'release_bike' do
  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
  #check if the bike is working
