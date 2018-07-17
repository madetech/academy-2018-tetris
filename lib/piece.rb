# frozen_string_literal: true
class Piece
  def initialize(coordinates = [6,37])
    @coordinates = coordinates
  end
  def type
    :I
  end
  def coordinates
    @coordinates
  end
end
