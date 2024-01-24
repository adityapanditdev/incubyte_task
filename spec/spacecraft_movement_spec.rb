
RSpec.describe SpacecraftMovement do
  class MovementTest
    include SpacecraftMovement
  end

  describe '#move_forward' do
    let(:initial_position) { [0, 0, 0] }
    let(:movement_test) { MovementTest.new }

    context 'when moving forward in different directions' do
      it 'moves North correctly' do
        movement_test.move_forward(initial_position, 'N')
        expect(initial_position).to eq([0, 1, 0])
      end

      it 'moves South correctly' do
        movement_test.move_forward(initial_position, 'S')
        expect(initial_position).to eq([0, -1, 0])
      end

      it 'moves East correctly' do
        movement_test.move_forward(initial_position, 'E')
        expect(initial_position).to eq([1, 0, 0])
      end

      it 'moves West correctly' do
        movement_test.move_forward(initial_position, 'W')
        expect(initial_position).to eq([-1, 0, 0])
      end

      it 'moves Up correctly' do
        movement_test.move_forward(initial_position, 'Up')
        expect(initial_position).to eq([0, 0, 1])
      end

      it 'moves Down correctly' do
        movement_test.move_forward(initial_position, 'Down')
        expect(initial_position).to eq([0, 0, -1])
      end
    end

    context 'when given an invalid direction' do
      it 'raises ArgumentError' do
        expect { movement_test.move_forward(initial_position, 'Invalid') }.to raise_error(ArgumentError, "Invalid direction: Invalid")
      end
    end
  end

  describe '#move_backward' do
    let(:initial_position) { [0, 0, 0] }
    let(:movement_test) { MovementTest.new }

    context 'when moving backward in different directions' do
      it 'moves North correctly' do
        movement_test.move_backward(initial_position, 'N')
        expect(initial_position).to eq([0, -1, 0])
      end

      it 'moves South correctly' do
        movement_test.move_backward(initial_position, 'S')
        expect(initial_position).to eq([0, 1, 0])
      end

      it 'moves East correctly' do
        movement_test.move_backward(initial_position, 'E')
        expect(initial_position).to eq([-1, 0, 0])
      end

      it 'moves West correctly' do
        movement_test.move_backward(initial_position, 'W')
        expect(initial_position).to eq([1, 0, 0])
      end

      it 'moves Up correctly' do
        movement_test.move_backward(initial_position, 'Up')
        expect(initial_position).to eq([0, 0, -1])
      end

      it 'moves Down correctly' do
        movement_test.move_backward(initial_position, 'Down')
        expect(initial_position).to eq([0, 0, 1])
      end
    end

    context 'when given an invalid direction' do
      it 'raises ArgumentError' do
        expect { movement_test.move_backward(initial_position, 'Invalid') }.to raise_error(ArgumentError, "Invalid direction: Invalid")
      end
    end
  end
end
