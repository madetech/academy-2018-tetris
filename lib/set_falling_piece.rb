# frozen_string_literal: true

class SetFallingPiece
  def initialize(piece_gateway:)
    @piece_gateway = piece_gateway
  end

  def execute(piece: :I)
    @piece_gateway.falling_piece = PieceFactory.create_piece(piece)

    {}
  end
end
