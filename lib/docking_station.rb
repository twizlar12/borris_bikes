require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    check_capacity()
  end

  def release_bike
    check_capacity()
    if @avaliable 
    @bikes.pop
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
      @bikes << bike
      return "#{bike} has been docked"
    end
  end

  private 

  attr_reader :bikes

  def check_capacity
    if @bikes.empty?
      @avaliable = false
      @full = false
    elsif @bikes.count == @capacity
      @avaliable = true
      @full = true
    else
      @full = false
      @avaliable = true
    end
  end
end
