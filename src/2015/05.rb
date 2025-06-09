# https://adventofcode.com/2015/day/5
module Year2015
  class Day05
    NAUGHTY_LETTER_PAIRS = %w[ab cd pq xy]

    def part_1(input_file)
      lines = input_file.readlines(chomp: true)

      lines.count { |line|
        includes_at_least_3_vowels?(line) &&
          includes_letter_repeated_consecutively?(line) &&
          excludes_naughty_letter_pairs?(line)
      }
    end

    def part_2(input_file)
      lines = input_file.readlines(chomp: true)

      lines.count { |line|
        includes_non_overlapping_letter_pair_twice?(line) &&
          includes_letter_pair_separated_by_letter?(line)
      }
    end

    private

    def includes_at_least_3_vowels?(string)
      string.scan(/[aeiou]/).count >= 3
    end

    def includes_letter_repeated_consecutively?(string)
      string.chars.each_cons(2).any? { _1 == _2 }
    end

    def excludes_naughty_letter_pairs?(string)
      NAUGHTY_LETTER_PAIRS.none? { string.include? it }
    end

    def includes_non_overlapping_letter_pair_twice?(string)
      pairs = string.chars.each_cons(2).to_a
      pairs.each_with_index.any? { |pair, i|
        one_if_before = (pairs[i - 1] == pair) ? 1 : 0
        one_if_after = (pairs[i + 1] == pair) ? 1 : 0
        pairs.count(pair) - one_if_before - one_if_after >= 2
      }
    end

    def includes_letter_pair_separated_by_letter?(string)
      string.chars.each_cons(3).any? { _1 == _3 }
    end
  end
end
