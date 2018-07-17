describe FallDownNaturally do
  it 'moves the piece down by one row on the board' do
    piece_gateway = spy
    fall_down_naturally = FallDownNaturally.new(piece_gateway: piece_gateway)
    fall_down_naturally.execute
    expect(piece_gateway).to have_received(:falling_piece=) do |piece|
      expect(piece.coordinates).to eq([6, 36])
    end
  end
end
