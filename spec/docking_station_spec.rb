require 'docking_station'
describe DockingStation do
  it "creates an instance of Dockingtstation" do
    dock = DockingStation.new
    expect(dock).to respond_to :release_bike
  end
  it "responds to docking_bike with 1 parameter" do
    expect(subject).to respond_to(:docking_bike).with(1).argument
  end
  it "should have the bike we have just worked in the instance varaible once we have docked it" do
    bike = Bike.new
    station = DockingStation.new
    station.docking_bike(bike)
    expect(station.dock).to eq bike
  end
  it "should raise error when you try to release a bike from an empty docking_station" do
    station = DockingStation.new
    expect {station.release_bike}.to raise_error "docking station empty!"
  end
end
# Our DockingStation is now ready to receive an instruction to release a bike.
describe :release_bike do
  it "creates a new instance of Bike" do
    expect(Bike.new).to respond_to :working?
  end
end
# We can now send a message to a bike to see if it is working.
