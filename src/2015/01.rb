# https://adventofcode.com/2015/day/1
module Year2015
  class Day01
    def part_1(file)
      input = file.read

      up = input.count("(")
      down = input.count(")")

      up - down
    end

    def part_2(file)
      input = file.read
      floor = 0

      input.chars.each_with_index do |char, i|
        case char
        when "("
          floor += 1
        when ")"
          floor -= 1
        end

        return i + 1 if floor < 0
      end
    end
  end
end
