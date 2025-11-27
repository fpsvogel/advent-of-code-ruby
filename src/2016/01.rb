# https://adventofcode.com/2016/day/1
module Year2016
  class Day01
    def part_1(input_file)
      moves = input_file.read.split(", ")

      pos = [0, 0]
      dir = [0, 1]

      moves.each do |move|
        turn = move[0]
        distance = move[1..].to_i

        dir =
          if turn == "R"
            [dir[1], -dir[0]]
          else
            [-dir[1], dir[0]]
          end

        pos[0] += dir[0] * distance
        pos[1] += dir[1] * distance
      end

      pos.map(&:abs).sum
    end

    def part_2(input_file)
      moves = input_file.read.split(", ")

      positions = [[0, 0]]
      dir = [0, 1]

      moves.each do |move|
        turn = move[0]
        distance = move[1..].to_i

        dir =
          if turn == "R"
            [dir[1], -dir[0]]
          else
            [-dir[1], dir[0]]
          end

        distance.times do
          new_pos = [positions.last[0] + dir[0], positions.last[1] + dir[1]]

          if positions.include?(new_pos)
            return new_pos.map(&:abs).sum
          end

          positions << new_pos
        end
      end
    end
  end
end
