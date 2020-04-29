require_relative 'bike'
class DockingStation

  attr_reader :avaliable
  attr_writer :avaliable

  attr_reader :capacity
  attr_writer :capacity

  def initialize
    @capacity = []
    check_capacity()
  end

  def check_capacity
    if @capacity.empty?
      @avaliable = false
    else
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
    if @avaliable && @capacity.count == 20
      fail ("dock full")
    elsif @capacity.count < 20
      @capacity << bike
      return "#{bike} has been docked"
    end
  end
end