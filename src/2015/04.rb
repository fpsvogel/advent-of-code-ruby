require "digest"

# https://adventofcode.com/2015/day/4
module Year2015
  class Day04
    def part_1(file)
      key = file.read.chomp
      lowest_md5_with_leading_zeroes(key:, zero_count: 5)
    end

    def part_2(file)
      key = file.read.chomp
      lowest_md5_with_leading_zeroes(key:, zero_count: 6)
    end

    private

    def lowest_md5_with_leading_zeroes(key:, zero_count:)
      (0..).find { |n|
        Digest::MD5
          .hexdigest("#{key}#{n}")
          .start_with?("0" * zero_count)
      }
    end
  end
end
