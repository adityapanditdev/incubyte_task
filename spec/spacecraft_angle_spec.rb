require_relative '../motion/spacecraft_angle.rb' 

RSpec.describe SpacecraftAngle do
  let(:dummy_class) { Class.new { include SpacecraftAngle } }

  describe '#turn_upward' do
    it 'turns upward if direction is not Up or Down' do
      instance = dummy_class.new
      expect(instance.turn_upward('l')).to eq(['Up', 'l'])
    end

    it 'does not change direction if already Up' do
      instance = dummy_class.new
      expect(instance.turn_upward('Up')).to eq(['Up', 'Up'])
    end

    it 'does not change direction if already Down' do
      instance = dummy_class.new
      expect(instance.turn_upward('Down')).to eq(['Down', 'Down'])
    end
  end

  describe '#turn_downward' do
    it 'turns downward if direction is not Up or Down' do
      instance = dummy_class.new
      expect(instance.turn_downward('l')).to eq(['Down', 'l'])
    end

    it 'does not change direction if already Up' do
      instance = dummy_class.new
      expect(instance.turn_downward('Up')).to eq(['Up', 'Up'])
    end

    it 'does not change direction if already Down' do
      instance = dummy_class.new
      expect(instance.turn_downward('Down')).to eq(['Down', 'Down'])
    end
  end
end
