require 'docking_station'

describe DockingStation do
  it "creates an instance of Dockingtstation" do
    dock = DockingStation.new
    expect(dock).to respond_to :release_bike
  end
  it "responds to docking_bike with 1 paramater" do
    expect(subject).to respond_to(:docking_bike).with(1).argument
  end
end

# Our DockingStation is now ready to receive an instruction to release a bike.

describe :release_bike do
  it "creates a new instance of Bike" do
    expect(Bike.new).to respond_to :working?
  end
end

# We can now send a message to a bike to see if it is working.
