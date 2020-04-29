require_relative 'bike'
class DockingStation
  def initialize
    @bike = true
  end

  def release_bike
    @bike = false
    Bike.new
  end

  def dock_bike
    @bike = true
    @bike
  end

  def avaliable?
    if @bike
      true
    else
      false
    end
  end

end