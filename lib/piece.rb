# frozen_string_literal: true
class Piece
  def initialize(type, coordinates, shape)
    @type = type
    @coordinates = coordinates
    @shape = shape
  end

  def type
    @type
  end

  def coordinates
    @coordinates
  end

  def shape
    @shape
  end
end
