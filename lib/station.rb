class Station

  def initialize(stations)
    @name = stations[:name]
    @zone = stations[:zone]
  end

attr_reader :name, :zone

end
