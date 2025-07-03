# https://adventofcode.com/2024/day/2
module Year2024
  class Day02
    def part_1(input_file)
      input_file
        .readlines(chomp: true)
        .map { |line| line.split.map(&:to_i) }
        .count { |row|
          row.each_cons(2).all? { |col_a, col_b| col_b.between?(col_a + 1, col_a + 3) } ||
            row.each_cons(2).all? { |col_a, col_b| col_b.between?(col_a - 3, col_a - 1) }
        }
    end

    def part_2(input_file)
      input_file
        .readlines(chomp: true)
        .map { |line| line.split.map(&:to_i) }
        .count { |complete_row|
          complete_row.combination(complete_row.size - 1).any? { |row|
            row.each_cons(2).all? { |col_a, col_b| col_b.between?(col_a + 1, col_a + 3) } ||
              row.each_cons(2).all? { |col_a, col_b| col_a.between?(col_b + 1, col_b + 3) }
          }
        }
    end
  end
end
