# https://adventofcode.com/2021/day/1
module Year2021
  class Day01
    def part_1(input_file)
      input_file
        .readlines
        .map(&:to_i)
        .each_cons(2)
        .count { _2 > _1 }
    end

    def part_2(input_file)
      input_file
        .readlines
        .map(&:to_i)
        .each_cons(3)
        .map(&:sum)
        .each_cons(2)
        .count { _2 > _1 }

      # Q: why does this alternative work?
      # .each_cons(4).count { |a, *, b| b > a }
    end
  end
end
