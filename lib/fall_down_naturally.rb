# frozen_string_literal: true

class FallDownNaturally
  def initialize(piece_gateway:)
    @piece_gateway = piece_gateway
  end

  def execute(*)
    if @piece_gateway.falling_piece.type == :I
      coordinates = [6, 36]
      shape = [
        [nil,nil,:X,nil],
        [nil,nil,:X,nil],
        [nil,nil,:X,nil],
        [nil,nil,:X,nil]
      ]
    else
      coordinates = [6, 37]
    end
    @piece_gateway.falling_piece = Piece.new(@piece_gateway.falling_piece.type, coordinates, shape)
  end
end
