class Writer
  def initialize(path)
    @path = path
  end

  def write(board)
    File.open(path, "w") do |f|
      board.each_row do |row|
        f.puts row.join(" ")
      end
    end
  end

  private
  attr_reader :path
end
