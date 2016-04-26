require_relative "../reader"

describe Reader do
  it "reads a file into a board" do
    reader = Reader.new("./spec/data/in.txt")

    board = reader.board

    expect(board.flat_map(&:value)).to(
      eq([1, 0, 1, 0, 1,
          0, 1, 0, 1, 0,
          0, 0, 1, 0, 0,
          1, 0, 1, 0, 1,
          0, 1, 0, 1, 0
         ])
    )
  end

  it "creates a new copy each time board is called" do
    reader = Reader.new("./spec/data/in.txt")

    board_1 = reader.board
    board_2 = reader.board

    board_1.set(1, 1, 9)

    expect(board_1.get(1, 1)).to eq 9
    expect(board_2.get(1, 1)).to eq 1
  end
end
