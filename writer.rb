class Writer
  def self.write(path, board)
    new(path, board).write
  end

  def initialize(path, board)
    @path = path
    @board = board
  end

  def write
    File.open(path, "w") do |f|
      board.each_row do |row|
        f.puts row.join(" ")
      end
    end
  end

  private
  attr_reader :board, :path
end
