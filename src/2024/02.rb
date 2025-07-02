# https://adventofcode.com/2024/day/2
module Year2024
  class Day02
    def part_1(input_file)
      rows = input_file
        .readlines(chomp: true)
        .map { |line| line.split.map(&:to_i) }

      good_row_count(rows, tolerate_one_bad_column: false)
    end

    def part_2(input_file)
      rows = input_file
        .readlines(chomp: true)
        .map { |line| line.split.map(&:to_i) }

      good_row_count(rows, tolerate_one_bad_column: true)
    end

    private

    def good_row_count(rows, tolerate_one_bad_column:)
      good_rows = []

      rows.each do |row|
        if row_good?(row)
          good_rows << row
        elsif tolerate_one_bad_column
          row.each_index do |index|
            row_without_element = row.dup.tap { it.delete_at(index) }
            if row_good?(row_without_element)
              good_rows << row_without_element
              break
            end
          end
        end
      end

      good_rows.count
    end

    def row_good?(row)
      sorted_row = row.sort

      if row == sorted_row || row == sorted_row.reverse
        absolute_values = row.each_cons(2).map { (_1 - _2).abs }

        if absolute_values.all? { (1..3).cover? it }
          return true
        end
      end

      false
    end
  end
end
