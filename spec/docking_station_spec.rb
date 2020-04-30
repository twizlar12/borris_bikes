require 'docking_station'

describe DockingStation do
  
  it {is_expected.to respond_to :release_bike}

  it "release bike" do
    bike = DockingStation.new
    bike.dock_bike("bike9")
    expect(bike.release_bike).to be_instance_of Bike
  end

  it "return a bike" do
    bike = subject
    expect(bike.dock_bike("bike0")).to eq("bike0 has been docked")
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

  it "do not allow bike to be docked if dock full and capacity is changed" do
    bike = DockingStation.new(30)
    bike.capacity.times{bike.dock_bike("bike10")}
    expect{
      bike.dock_bike("bike11")}.to raise_error("dock full")
  end

  it "check capacity when init" do
    bike = subject
    expect(bike.capacity).to eq(20)
  end

  it "set capacity when init" do
    bike = DockingStation.new(30)
    expect(bike.capacity).to eq(30)
  end

  it "do not release a broken bike" do
    bike = DockingStation.new
    bike.dock_bike("bike10", "broken")
    expect{bike.release_bike}.to raise_error("bike unavaliable")
  end

  it 'releases working bikes' do

    subject.dock_bike double(:bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end
end