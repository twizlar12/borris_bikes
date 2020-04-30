require 'bike'
describe Bike do
  it {is_expected.to respond_to :working?}

  it "report a broken bike" do
    bike = Bike.new
    expect(bike.broken?).to eq(true)
end

end