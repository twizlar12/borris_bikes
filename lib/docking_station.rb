require_relative 'bike'
class DockingStation
  def release_bike
    Bike.new
  end
end



# class ClassB
#   attr_reader :object # lets you call 'some_instance_of_classb.object'
#   def initialize
#     @object = ClassA.new
#   end
# end