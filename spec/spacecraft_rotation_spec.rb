
require 'rspec'
require_relative '../motion/spacecraft_rotation.rb'
RSpec.describe SpacecraftRotation do
  let(:dummy_class) { Class.new { include SpacecraftRotation } }

  describe '#turn_left' do
    it 'turns left from North direction' do
      instance = dummy_class.new
      expect(instance.turn_left('N', nil)).to eq('W')
    end
  end

  describe '#turn_right' do
    it 'turns right from North direction' do
      instance = dummy_class.new
      expect(instance.turn_right('N', nil)).to eq('E')
    end
  end
end
