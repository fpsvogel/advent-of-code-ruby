# https://adventofcode.com/2023/day/1
module Year2023
  class Day01
    def part_1(file)
      sum_first_and_last_numbers(file)
    end

    def part_2(file)
      number_words_to_digits(file)
        .then { sum_first_and_last_numbers(it) }
    end

    private

    WORDS_TO_DIGITS = %w[one two three four five six seven eight nine].zip(1..9).to_h

    def sum_first_and_last_numbers(file)
      file.map { |line|
        line
          .scan(/\d/)
          .then { |nums| [nums.first, nums.last] }
          .join
          .to_i
      }.sum
    end

    def number_words_to_digits(lines)
      lines.map { |line|
        # Must use lookahead due to overlapping number words, e.g. "oneight".
        line.gsub(/(?=(#{WORDS_TO_DIGITS.keys.join("|")}))/) { |_match|
          number_word = $1
          WORDS_TO_DIGITS[number_word]
        }
      }
    end
  end
end
