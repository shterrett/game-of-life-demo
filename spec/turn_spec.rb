require_relative "../turn"

describe Turn do
  before do
    File.open("./spec/data/out.txt", "w") do |f|
      f.puts ""
    end
  end

  it "iterates through the in file and writes the results of the block to the
      out file" do
    Turn.new("./spec/data/in.txt", "./spec/data/out.txt").play do |cell, old|
      3
    end

    expect(File.read("./spec/data/out.txt")).to(
      eq(["3 3 3 3 3",
          "3 3 3 3 3",
          "3 3 3 3 3",
          "3 3 3 3 3",
          "3 3 3 3 3",
          ""].join("\n")
        )
    )
  end

  it "yields the old board on each iteration" do
    captured = nil

    Turn.new("./spec/data/in.txt", "./spec/data/out.txt").play do |cell, old|
      captured = old
      3
    end

    board = Reader.new("./spec/data/in.txt").board

    expect(board.zip(captured).all? { |a, b| a == b }).to be_truthy
  end
end
