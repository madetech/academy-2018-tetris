class PieceFactory
  def self.create_piece(type)
    if type == :I
      Piece.new(:I, [6, 37], [
        [nil,nil,:X,nil],
        [nil,nil,:X,nil],
        [nil,nil,:X,nil],
        [nil,nil,:X,nil]
      ])
    elsif type == :L
      Piece.new(:L, [6,38], [
        [nil,:X,nil],
        [nil,:X,nil],
        [nil,:X,:X]
      ])
    end
  end
end
