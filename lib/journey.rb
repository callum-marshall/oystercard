class Journey

  def initialize
    @entry_station
    @exit_station
  end

  attr_reader :in_journey, :entry_station, :exit_station

  def start(station)
    @entry_station = station
  end

  def finish(station)
    @exit_station = station
  end

  def complete?
    @exit_station != nil
  end

  def fare
    complete? ? MIN_FARE : PENALTY_FARE
  end

MIN_FARE = 1
PENALTY_FARE = 6

end

# def in_journey?
#   @journey[:entry] != nil && @journey[:exit] == nil
# end
