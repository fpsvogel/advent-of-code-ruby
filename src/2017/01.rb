# https://adventofcode.com/2017/day/1
module Year2017
  class Day01
    def part_1(input_file)
      captcha = input_file.read.chomp.chars.map(&:to_i)
      captcha << captcha.first # simulates a circular list

      captcha
        .chunk_while { _1 == _2 }
        .map { _1.drop(1) }
        .flatten
        .sum
    end

    def part_2(input_file)
      captcha = input_file.read.chomp.chars.map(&:to_i)
      first_half, second_half = captcha.each_slice(captcha.size / 2).to_a

      first_half
        .zip(second_half)
        .filter { _1 == _2 }
        .flatten
        .sum
    end
  end
end
