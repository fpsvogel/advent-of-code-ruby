# https://adventofcode.com/2019/day/1
module Year2019
  class Day01
    def part_1(file)
      file
        .map(&:to_i)
        .sum { |mass| mass / 3 - 2 }
    end

    def part_2(file)
      file
        .map(&:to_i)
        .sum { |mass|
          Enumerator.new { |total|
            total << mass while (mass = mass / 3 - 2) > 0
          }.sum
        }
    end
  end
end
