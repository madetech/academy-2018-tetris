# frozen_string_literal: true

class FallDownNaturally
  def initialize(piece_gateway:)
    @piece_gateway = piece_gateway
  end

  def execute(*)
    @piece_gateway.falling_piece = Piece.new(:I, [6, 36])
  end
end
