# frozen_string_literal:true

class ViewBoard
  def initialize(piece_gateway:)
    @piece_gateway = piece_gateway
    @board = [
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
    ]
  end

  def transpose_piece(coordinates)
    falling_shape = @piece_gateway.falling_piece.shape
    x, z = coordinates
    x-=2
    y = 38-z
    pp x
    pp y
    @board[y][x] = falling_shape[0][0]

    @board[y+1][x] = falling_shape[1][0]
    @board[y+2][x] = falling_shape[2][0]
    @board[y][x+1] = falling_shape[0][1]
    @board[y+1][x+1] = falling_shape[1][1]
    @board[y+2][x+1] = falling_shape[2][1]
    @board[y][x+2] = falling_shape[0][2]
    @board[y+1][x+2] = falling_shape[1][2]
    @board[y+2][x+2] = falling_shape[2][2]

    # if falling_shape.length == 4 #The exception (I)
    #   @board[y+3][x] = falling_shape[0][3]
    #   @board[y+3][x+1] = falling_shape[1][3]
    #   @board[y+3][x+2] = falling_shape[2][3]
    #   @board[y+3][x+3] = falling_shape[3][3]
    # end
  end

  def execute(*)
    if @piece_gateway.falling_piece.nil?
      {
        board: @board
      }
    #Type L has gone down one space
    elsif @piece_gateway.falling_piece.coordinates == [6, 37] && @piece_gateway.falling_piece.type == :L
      #@piece_gateway.board = [[nil] * 10] * 40
      transpose_piece([6,37])
      puts @board.length
      puts @board[0].length
      {board: @board}
      # {
      #   board: [
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, :X, :X, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      #     [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
      #   ]
      # }
      # Type I has moved down one space
    elsif @piece_gateway.falling_piece.coordinates == [6,36]
      {
        board: [
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
        ]
      }
      # Type L at the beginning
    elsif @piece_gateway.falling_piece.type == :L
      {
        board: [
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, :X, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
        ]
      }
      #Type I at the beginning
    else
      {
        board: [
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, :X, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
        ]
      }
    end
  end
end

