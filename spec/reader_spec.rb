require_relative "../reader"

describe Reader do
  it "reads a file into a board" do
    reader = Reader.new("./spec/data/in.txt")

    board = reader.board

    expect(board.flat_map { |cell| cell }).to(
      eq([1, 0, 1, 0, 1,
          0, 1, 0, 1, 0,
          0, 0, 1, 0, 0,
          1, 0, 1, 0, 1,
          0, 1, 0, 1, 0
         ])
    )
  end
end
