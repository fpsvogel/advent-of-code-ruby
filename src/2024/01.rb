# https://adventofcode.com/2024/day/1
module Year2024
  class Day01
    def part_1(file)
      sorted_lists(file)
        .transpose
        .map { (_1 - _2).abs }
        .sum
    end

    def part_2(file)
      list_a, list_b = sorted_lists(file)
      list_b_tallies = list_b.tally
      list_a
        .map { |n| n * (list_b_tallies[n] || 0) }
        .sum
    end

    private

    def sorted_lists(file)
      file
        .map { it.split.map(&:to_i) }
        .transpose
        .map(&:sort)
    end
  end
end
