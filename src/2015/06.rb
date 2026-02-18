# https://adventofcode.com/2015/day/6
module Year2015
  class Day06
    def part_1(file)
      grid = Array.new(1000) { Array.new(1000, false) }
      actions = {
        "turn on" => ->(_) { true },
        "turn off" => ->(_) { false },
        "toggle" => ->(v) { !v }
      }

      act_on_grid(grid:, actions:, file:)

      grid.flatten.count(true)
    end

    def part_2(file)
      grid = Array.new(1000) { Array.new(1000, 0) }
      actions = {
        "turn on" => ->(v) { v + 1 },
        "turn off" => ->(v) { [v - 1, 0].max },
        "toggle" => ->(v) { v + 2 }
      }

      act_on_grid(grid:, actions:, file:)

      grid.flatten.sum
    end

    private

    def act_on_grid(grid:, actions:, file:)
      file.each do |line|
        /(?<action>[a-z ]+) (?<x0>\d+),(?<y0>\d+) through (?<x1>\d+),(?<y1>\d+)/ =~ line

        (x0.to_i..x1.to_i).each do |x|
          (y0.to_i..y1.to_i).each do |y|
            grid[x][y] = actions[action].call(grid[x][y])
          end
        end
      end
    end
  end
end
