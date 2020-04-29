require_relative 'bike'
class DockingStation
  attr_reader :capacity
  attr_writer :capacity

  def initialize
    @capacity = []
    check_capacity()
  end

  def check_capacity
    if @capacity.empty?
      @avaliable = false
      @full = false
    elsif @capacity.count == 20
      @avaliable = true
      @full = true
    else
      @full = false
      @avaliable = true
    end
  end

  def release_bike
    check_capacity()
    if @avaliable 
    @capacity.pop
    Bike.new
    else
      fail ("bike unavaliable")
    end
  end

  def dock_bike(bike)
    check_capacity
    if @avaliable && @full
      fail ("dock full")
    elsif @full == false
      @capacity << bike
      return "#{bike} has been docked"
    end
  end
end