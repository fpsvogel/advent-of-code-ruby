# https://adventofcode.com/2025/day/1
module Year2025
  class Day01
    def part_1(file)
      zeros = 0
      dial = 50

      moves(file).each do |move|
        dial = (dial + move) % 100
        zeros += 1 if dial.zero?
      end

      zeros
    end

    def part_2(file)
      zeros = 0
      dial = 50

      moves(file).each do |move|
        step = move.positive? ? 1 : -1
        move.abs.times do
          dial = (dial + step) % 100
          zeros += 1 if dial.zero?
        end
      end

      zeros
    end

    private

    def moves(file)
      file
        .map {
          it.tr("LR", "-+").to_i
        }
    end
  end
end
