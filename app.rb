require_relative 'lib/tateti'

include Tateti

board = Board.new

board.display

board.set(1, 1, 'X')
board.set(0, 2, 'O')
board.set(0, 0, 'X')
board.set(2, 2, 'O')
board.set(1, 2, 'X')
board.set(1, 0, 'O')
board.set(2, 1, 'X')
board.set(0, 1, 'O')
board.set_x(2, 0)

board.display

board.reset

board.display
