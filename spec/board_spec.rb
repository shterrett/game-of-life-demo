require_relative "../board"

describe Board do
  it "iterates through a 2D array" do
    board = Board.new([[1, 2, 3],
                       [4, 5, 6],
                       [7, 8, 9]])

    walk = []
    board.each do |cell|
      walk << cell
    end

    expect(walk).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  it "provides access to a specific cell" do
    board = Board.new([[1, 2, 3],
                       [4, 5, 6],
                       [7, 8, 9]])

    expect(board.get(1, 1)).to eq 5
    expect(board.get(2, 0)).to eq 3
    expect(board.get(0, 2)).to eq 7
  end

  it "sets the value of a cell" do
    board = Board.new([[1, 2, 3],
                       [4, 5, 6],
                       [7, 8, 9]])

    board.set(2, 0, "X")
    expect(board.get(2, 0)).to eq "X"
  end
end