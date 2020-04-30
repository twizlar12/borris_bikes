require 'bike'
describe Bike do
  it "report a broken bike" do
    bike = Bike.new
    bike.report_broken
    expect(bike).to be_broken
  end

end