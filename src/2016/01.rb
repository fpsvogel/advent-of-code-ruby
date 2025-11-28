# https://adventofcode.com/2016/day/1

require "matrix"

module Year2016
  class Day01
    DIRS = [
      Vector[0, 1],
      Vector[1, 0],
      Vector[0, -1],
      Vector[-1, 0]
    ]

    def part_1(input_file)
      final_position = follow_directions(input_file)
      final_position.sum(&:abs)
    end

    def part_2(input_file)
      follow_directions(input_file) do |past_positions, new_position|
        if past_positions.include?(new_position)
          return new_position.sum(&:abs)
        end
      end
    end

    private

    def follow_directions(input_file)
      positions = [Vector[0, 0]]
      direction = 0

      input_file.read.scan(/(\w)(\d+)/).each do |turn, distance|
        direction += (turn == "R") ? 1 : -1
        direction %= DIRS.size

        distance.to_i.times do
          new_pos = positions.last + DIRS[direction]
          yield positions, new_pos if block_given?
          positions << new_pos
        end
      end

      positions.last
    end
  end
end
