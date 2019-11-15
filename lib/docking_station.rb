class DockingStation
  attr_reader :bike_rack

 

  def release_bike
    fail "No bikes available" unless @bike_rack
    @bike_rack
  end

  def dock(bike) 
    fail "The docking station is full" if @bike_rack
    @bike_rack = bike
  end

end
