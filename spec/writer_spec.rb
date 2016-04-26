require_relative "../writer"
require_relative "../board"

describe Writer do
  before do
    File.open("./spec/data/out.txt", "w") do |f|
      f.puts ""
    end
  end

  it "writes a board to a file" do
    board = Board.new([[0, 1, 0],
                       [1, 0, 1],
                       [0, 0, 0]])

    Writer.write("./spec/data/out.txt", board)

    expect(File.read("./spec/data/out.txt")).to(
      eq(
          ["0 1 0",
           "1 0 1",
           "0 0 0",
           ""].join("\n")
      )
    )
  end
end
