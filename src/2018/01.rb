# https://adventofcode.com/2018/day/1
module Year2018
  class Day01
    def part_1(input_file)
      changes = input_file.map(&:to_i)

      changes.sum
    end

    def part_2(input_file)
      changes = input_file.map(&:to_i)
      reached_frequencies = Set.new
      frequency = 0

      changes.cycle.each do |change|
        frequency += change
        return frequency if reached_frequencies.include?(frequency)
        reached_frequencies << frequency
      end
    end
  end
end
