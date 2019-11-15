class DockingStation
  attr_reader :bike_rack

  def initialize
    @bike_rack = []
  end

  def release_bike
    fail "No bikes available" if @bike_rack == []
    @bike_rack.last
  end

  def dock(bike) 
    fail "The docking station is full" if @bike_rack.length == 20
    @bike_rack.push(bike).last
  end

end
