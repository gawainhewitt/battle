require 'player'

describe Player do
  subject(:gawain) { Player.new('Gawain')}
  subject(:kieran) { Player.new('Kieran') }

  describe '#name' do
    it 'returns the name' do
      expect(gawain.name).to eq "Gawain"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(gawain.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(kieran).to receive(:receive_damage)
      gawain.attack(kieran)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { gawain.receive_damage }.to change { gawain.hit_points }.by(-10)
    end
  end

end
