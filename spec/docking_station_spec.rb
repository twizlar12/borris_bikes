require 'docking_station'
describe DockingStation do
  
  it {is_expected.to respond_to :release_bike}

  it "gets a working bike" do
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end

  it "return a bike" do
    bike = subject.dock_bike
    expect(bike).to eq(true)
  end

  it "check if bike is avaliable" do
    bike = subject
    expect(bike.avaliable?).to eq(true)
  end

end