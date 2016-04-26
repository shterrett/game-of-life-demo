require_relative "reader"
require_relative "writer"
require_relative "board"

class Turn
  def initialize(in_path, out_path)
    @reader = Reader.new(in_path)
    @writer = Writer.new(out_path)
  end

  def play
    old = reader.board
    new = reader.board

    old.each do |cell|
      new_value = yield cell, old
      new.set(cell.row, cell.column, new_value)
    end

    writer.write(new)
  end

  private
  attr_reader :reader, :writer
end
