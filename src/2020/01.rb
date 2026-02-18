# https://adventofcode.com/2020/day/1
module Year2020
  class Day01
    SUM = 2020

    def part_1(input_file)
      entries = input_file.map(&:to_i)

      entries.combination(2).find { _1 + _2 == 2020 }.reduce(:*)
    end

    def part_2(input_file)
      entries = input_file.map(&:to_i)

      entries.combination(3).find { _1 + _2 + _3 == 2020 }.reduce(:*)
    end

    def part_1_faster(input_file)
      entries = input_file.map(&:to_i).to_set

      entries.each do |entry|
        complement = SUM - entry

        if entries.include?(complement)
          return entry * complement
        end
      end
    end

    def part_2_faster(input_file)
      entries = input_file.map(&:to_i).to_set

      entries.to_a.combination(2).each do |entry_a, entry_b|
        complement = SUM - entry_a - entry_b

        if entries.include?(complement)
          return entry_a * entry_b * complement
        end
      end
    end
  end
end
