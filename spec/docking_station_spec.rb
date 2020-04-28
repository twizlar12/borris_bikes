require 'docking_station'
describe DockingStation do

  it "responds to the method release_bike" do
    expect(subject).to respond_to :release_bike  
  end
end


# Add a test to your spec file that expects DockingStation
# instances to respond_to the method release_bike
