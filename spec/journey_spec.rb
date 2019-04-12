require "journey"

describe Journey  do

  let(:station) { double("station") }
  let(:min_fare) { Journey::MIN_FARE }
  let(:penalty_fare) { Journey::PENALTY_FARE }

  describe "#start" do
    it "sets entry station" do
      subject.start(station)
      expect(subject.entry_station).to eq station
    end
  end

  describe "#finish" do
    it "sets exit_station" do
      subject.finish(station)
      expect(subject.exit_station).to eq station
    end
  end

  describe '#complete?' do
    it "returns true if journey is complete" do
      subject.finish(station)
      expect(subject).to be_complete
    end
    it "returns false if journey is incomplete" do
      subject.start(station)
      expect(subject).not_to be_complete
    end
  end

  describe '#fare' do
    it "returns minimum fare if journey is complete" do
      subject.finish(station)
      expect(subject.fare).to eq min_fare
    end
    it "returns penalty fare if journey is incomplete" do
      subject.start(station)
      expect(subject.fare).to eq penalty_fare
    end
  end
end
