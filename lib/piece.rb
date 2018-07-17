# frozen_string_literal: true
class Piece
  def initialize(type, coordinates)
    @type = type
    @coordinates = coordinates
  end

  def type
    @type
  end

  def coordinates
    @coordinates
  end
end
