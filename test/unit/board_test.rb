require_relative '../test_helper'

describe Board do
  describe "new" do
    before do
      @board = Board.new
    end
    it "should initialize position 0,0 on nil" do
      @board[0,0].must_equal nil
    end
    it "should initialize position 0,1 on nil" do
      @board[0,1].must_equal nil
    end
    it "should initialize position 0,2 on nil" do
      @board[0,2].must_equal nil
    end
    it "should initialize position 1,0 on nil" do
      @board[1,0].must_equal nil
    end
    it "should initialize position 1,1 on nil" do
      @board[1,1].must_equal nil
    end
    it "should initialize position 1,2 on nil" do
      @board[1,2].must_equal nil
    end
    it "should initialize position 2,0 on nil" do
      @board[2,0].must_equal nil
    end
    it "should initialize position 2,1 on nil" do
      @board[2,1].must_equal nil
    end
    it "should initialize position 2,2 on nil" do
      @board[2,2].must_equal nil
    end
  end
  
  describe "[]=" do
    before do
      @board = Board.new
      @board[0,0] = 'X'
    end
    it "should set position 0,0 on X" do
      @board[0,0].must_equal 'X'
    end
    it "should not set position 0,1 on X" do
      @board[0,1].wont_equal 'X'
    end
    it "should not set position 0,2 on X" do
      @board[0,2].wont_equal 'X'
    end
    it "should not set position 1,0 on X" do
      @board[1,0].wont_equal 'X'
    end
    it "should not set position 1,1 on X" do
      @board[1,1].wont_equal 'X'
    end
    it "should not set position 1,2 on X" do
      @board[1,2].wont_equal 'X'
    end
    it "should not set position 2,0 on X" do
      @board[2,0].wont_equal 'X'
    end
    it "should not set position 2,1 on X" do
      @board[2,1].wont_equal 'X'
    end
    it "should not set position 2,2 on X" do
      @board[2,2].wont_equal 'X'
    end
    it "should not change an already set position" do
      refute @board.set_o(0,0)
      @board[0,0].must_equal 'X'
    end
  end
  
  describe "set and get" do
    before do
      @board = Board.new
    end
    it "sets and gets" do
      @board.set(0,0,'X')
      @board.get(0,0).must_equal 'X'
    end
  end
  
  
  # describe "" do
  #   
  # end
end
