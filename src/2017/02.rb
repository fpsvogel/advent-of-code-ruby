# https://adventofcode.com/2017/day/2
module Year2017
  class Day02
    def part_1(input_file)
      input_file
        .readlines
        .sum { it.split.map(&:to_i).minmax.reduce(:-).abs }
    end

    def part_2(input_file)
      rows = input_file.readlines(chomp: true).map { it.split.map(&:to_i) }

      rows.sum { |row|
        row
          .combination(2)
          .find { |a, b| a % b == 0 || b % a == 0 }
          .then { |a, b| [a, b].max / [a, b].min }
      }
    end
  end
end
