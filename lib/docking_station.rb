require_relative 'bike'
class DockingStation

  attr_reader :avaliable
  attr_writer :avaliable

  attr_reader :capacity
  attr_writer :capacity

  def initialize
    @capacity = 20
    @avaliable = true
  end

  def check_capacity
    if @capacity == 0
      @avaliable = false
    else
      @avaliable = true
    end
  end

  def release_bike
    check_capacity()
    if @avaliable
    @capacity -= 1
    Bike.new
    else
      fail ("bike unavaliable")
    end
  end

  def dock_bike
    check_capacity()
    if @avaliable && @capacity == 20
      fail ("dock full")
    elsif capacity < 20
      @capacity += 1
      @avaliable = true
    end
  end
end