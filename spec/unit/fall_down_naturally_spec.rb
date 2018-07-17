# frozen_string_literal: true

describe FallDownNaturally do
  it 'moves the piece down by one row on the board' do
    piece_gateway = spy(falling_piece: PieceFactory.create_piece(:I))

    fall_down_naturally = FallDownNaturally.new(piece_gateway: piece_gateway)
    fall_down_naturally.execute
    expect(piece_gateway).to have_received(:falling_piece=) do |piece|
      expect(piece.coordinates).to eq([6, 36])
    end
  end

  it 'moves the L piece down by one row on the board' do
    piece_gateway = spy(falling_piece: PieceFactory.create_piece(:L))

    fall_down_naturally = FallDownNaturally.new(piece_gateway: piece_gateway)
    fall_down_naturally.execute

    expect(piece_gateway).to have_received(:falling_piece=) do |piece|
      expect(piece.coordinates).to eq([6, 37])
    end
  end
end
