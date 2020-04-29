require_relative 'bike'
class DockingStation

  attr_reader :avaliable
  attr_writer :avaliable

  def initialize
    @avaliable = true
  end

  def release_bike
    if @avaliable
    @avaliable = false
    Bike.new
    else
      fail ("bike unavaliable")
    end
  end

  def dock_bike
    @avaliable = true
    @avaliable
  end
end