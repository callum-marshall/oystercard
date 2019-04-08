require 'oystercard'

describe Oystercard do
  it { is_expected.to respond_to(:balance) }

  describe '#top_up' do
    it 'balance can be topped up' do
      expect(subject.top_up(10)).to eq 10
    end

    it 'fails if user tries to exceed maximum balance' do
      expect{subject.top_up(95)}.to raise_error("Maximum balance of #{Oystercard::MAX_BALANCE} exceeded")
    end
  end

end
