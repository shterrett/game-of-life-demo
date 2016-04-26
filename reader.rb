require_relative "board"

class Reader
  def initialize(path)
    @path = path
  end

  def board
    @board ||= Board.new(board_from_file)
  end

  private
  attr_reader :path

  def board_from_file
    IO.readlines(path).map do |line|
      line.split(" ").map(&:to_i)
    end
  end
end
