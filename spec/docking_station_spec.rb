require 'docking_station'

describe DockingStation do
  
  it {is_expected.to respond_to :release_bike}

  it "gets a working bike" do
    bike = subject
    bike.capacity = ["bike0"]
    expect(bike.release_bike.working?).to eq(true)
  end

  it "return a bike" do
    bike = subject
    expect(bike.dock_bike("bike0")).to eq("bike0 has been docked")
  end

  it "check if bike is avaliable" do
    bike = subject
    subject.capacity = ["bike0"]
    expect(bike.check_capacity).to eq(true)
  end

  it "do not realese bike if unavaliable" do
    bike = subject
    expect{bike.release_bike}.to raise_error("bike unavaliable")
  end

  it "do not allow bike to be docked if dock full" do
    bike = subject
    DockingStation::DEFAULT_CAPACITY.times{bike.dock_bike("bike10")}
    expect{
      bike.dock_bike("bike11")}.to raise_error("dock full")
  end
end