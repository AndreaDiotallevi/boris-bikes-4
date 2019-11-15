class DockingStation
  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    fail "The docking station is full" if @bike
    @bike = bike
  end

end
