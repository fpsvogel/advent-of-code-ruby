# https://adventofcode.com/2015/day/5
module Year2015
  class Day05
    def part_1(file)
      file.count { |line|
        includes_at_least_3_vowels?(line) &&
          includes_letter_repeated_consecutively?(line) &&
          excludes_naughty_letter_pairs?(line)
      }
    end

    def part_2(file)
      file.count { |line|
        includes_non_overlapping_letter_pair_twice?(line) &&
          includes_letter_pair_separated_by_letter?(line)
      }
    end

    private

    def includes_at_least_3_vowels?(string)
      string.count("aeiou") >= 3
    end

    def includes_letter_repeated_consecutively?(string)
      string =~ /(.)\1/
    end

    def excludes_naughty_letter_pairs?(string)
      string !~ /ab|cd|pq|xy/
    end

    def includes_non_overlapping_letter_pair_twice?(string)
      string =~ /(..).*\1/
    end

    def includes_letter_pair_separated_by_letter?(string)
      string =~ /(.).\1/
    end
  end
end
