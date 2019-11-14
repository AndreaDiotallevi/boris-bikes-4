require "docking_station"
require "bike"

describe DockingStation do

  describe "#release_bike" do
    it "responds to the method release_bike" do
      expect(subject).to respond_to(:release_bike)
    end

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "returns true if working? method is called" do
      bike = Bike.new
      subject.dock(bike)
      expect((subject.release_bike).working?).to be true
    end

    it "raises en error if there is no bike" do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end

  end

  describe "#dock()" do
    it "responds to the 'dock' method with 1 argument" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "docks the bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
  end

end
