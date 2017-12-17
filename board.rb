require_relative 'card.rb'

class Board
  attr_accessor :number_of_cards
  attr_reader :grid

  def initialize
    @grid = Array.new(4) { Array.new(4, 0) }
  end

  def grid_size
    @grid.flatten.count
  end

  def populate
    total_uniques = grid_size / 2
    possible_values = (1..total_uniques).to_a + (1..total_uniques).to_a
    possible_values.shuffle!

    @grid.each_with_index do |row, row_index|
      row.each_index do |col_index|
        @grid[row_index][col_index] = Card.new(possible_values.pop)
      end
    end

    @grid
  end

  def render
    @grid.each_with_index do |row, row_index|
      row.each_index do |col_index|
        print @grid[row_index][col_index].to_s
      end
    end

    # Display the board
    # Iterate through the grid, and display each element's face_value

    # if the card's status is face_up
      # @grid[0][0].to_s # obtains the card's face_value

  end

  def won?
    @grid.flatten.empty?
  end

  def reveal

  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, value)
    row, col = pos
    grid[row][col] = value
  end
end
