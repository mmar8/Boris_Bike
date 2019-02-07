require './lib/docking_station'
require './lib/bike'

docking_station = DockingStation.new

bike = Bike.new

docking_station.release_bike
docking_station.dock(bike)
