# https://adventofcode.com/2019/day/1
module Year2019
  class Day01
    def part_1(input_file)
      input_file
        .readlines
        .map(&:to_i)
        .sum { |mass| mass / 3 - 2 }
    end

    def part_2(input_file)
      input_file
        .readlines
        .map(&:to_i)
        .sum { |mass|
          Enumerator.new { |total|
            total << mass while (mass = mass / 3 - 2) > 0
          }.sum
        }
    end
  end
end
