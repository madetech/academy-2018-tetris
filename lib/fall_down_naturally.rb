class FallDownNaturally
  def initialize(piece_gateway:)
    @piece_gateway = piece_gateway
  end

  def execute(*)
    @piece_gateway.falling_piece = Piece.new([6,36])
  end
end
