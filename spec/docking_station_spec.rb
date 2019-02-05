# In spec/borisbike_spec.rb
require "./lib/docking_station"
describe DockingStation do
  #it 'release_bike' do
  it {is_expected.to respond_to :release_bike}
end
