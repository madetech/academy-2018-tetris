class PieceFactory
  def self.create_piece(type)
    if type == :I
      Piece.new(:I,[6,37])
    elsif type == :L
      Piece.new(:L, [6,38])
    end
  end
end
