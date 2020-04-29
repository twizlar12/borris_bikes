require 'docking_station'
describe DockingStation do
  
  it {is_expected.to respond_to :release_bike}

  it "gets a working bike" do
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end

  it "return a bike" do
    bike = subject
    bike.capacity = 19
    expect(bike.dock_bike).to eq(true)
  end

  it "check if bike is avaliable" do
    bike = subject
    expect(bike.avaliable).to eq(true)
  end

  it "do not realese bike if unavaliable" do
    bike = subject
    expect{bike.capacity = 0
      bike.release_bike}.to raise_error("bike unavaliable")
  end

  it "do not allow bike to be docked if dock full" do
    bike = subject
    expect{bike.avaliable = true
      bike.dock_bike}.to raise_error("dock full")
  end

  it "new init should set capacity" do
    bike = subject
    expect(bike.capacity).to eq(20)
  end

end