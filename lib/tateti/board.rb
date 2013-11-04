module Tateti
  class Board
    def initialize
      setup
    end

    def [](x, y)
      @grid[2 - y][x]
    end

    alias_method :get, :[]

    def []=(x, y, value)
      @grid[2 - y][x] = value
    end

    alias_method :set, :[]=

    def set_x(x, y)
      return false unless self[x, y].nil?
      self[x,y] = 'X'
    end

    def set_o(x, y)
      return false unless self[x, y].nil?
      self[x,y] = 'O'
    end
    
    def display
      puts '-' * 9
      @grid.each do |row|
        puts row.map{|x| x.nil? ? ' ' : x}.join(' | ')
        puts '-' * 9
      end
      puts
    end

    def reset
      @grid = [
        [nil, nil, nil],
        [nil, nil, nil],
        [nil, nil, nil]
      ]
    end
    
    alias_method :setup, :reset
  end
end
