# https://adventofcode.com/2017/day/2
module Year2017
  class Day02
    def part_1(input_file)
      rows = input_file.map { it.split.map(&:to_i) }
      rows.sum { it.minmax.reduce(:-).abs }
    end

    def part_2(input_file)
      rows = input_file.map { it.split.map(&:to_i) }
      rows.sum { it.permutation(2).find { |a, b| a % b == 0 }.reduce(:/) }
    end
  end
end
