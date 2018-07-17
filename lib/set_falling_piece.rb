class SetFallingPiece
  def initialize(piece_gateway:)
    @piece_gateway = piece_gateway     
  end

  def execute(*)
    @piece_gateway.falling_piece = Piece.new

    {}
  end
end

