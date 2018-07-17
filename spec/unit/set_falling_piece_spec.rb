# frozen_string_literal: true

describe SetFallingPiece do
  it 'responds with empty hash' do
    piece_gateway = spy
    expect(SetFallingPiece.new(piece_gateway: piece_gateway).execute).to eq({})
  end

  it 'sets the falling piece' do
    piece_gateway = spy
    SetFallingPiece.new(piece_gateway: piece_gateway).execute({piece: :I})

    expect(piece_gateway).to have_received(:falling_piece=) do |piece|
      expect(piece.type).to eq(:I)
    end
  end

  it 'sets the falling piece to L' do
    piece_gateway = spy
    SetFallingPiece.new(piece_gateway: piece_gateway).execute({piece: :L})

    expect(piece_gateway).to have_received(:falling_piece=) do |piece|
      expect(piece.type).to eq(:L)
    end
  end
end
