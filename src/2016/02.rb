# https://adventofcode.com/2016/day/2
module Year2016
  class Day02
    DIRS = {
      "U" => Vector[0, -1],
      "D" => Vector[0, 1],
      "R" => Vector[1, 0],
      "L" => Vector[-1, 0]
    }
    PT_1_STARTING_POS = Vector[1, 1]
    PT_1_KEYPAD = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    PT_2_STARTING_POS = Vector[0, 2]
    PT_2_KEYPAD = [
      [nil, nil, 1, nil, nil],
      [nil, 2, 3, 4, nil],
      [5, 6, 7, 8, 9],
      [nil, "A", "B", "C", nil],
      [nil, nil, "D", nil, nil]
    ]

    def part_1(input_file)
      keypad_code(input_file, PT_1_KEYPAD, PT_1_STARTING_POS).to_i
    end

    def part_2(input_file)
      keypad_code(input_file, PT_2_KEYPAD, PT_2_STARTING_POS)
    end

    private

    def keypad_code(input_file, keypad, starting_pos)
      moves = input_file.readlines(chomp: true).map(&:chars)

      pos = starting_pos
      moves
        .map { |line|
          line.each do |move|
            new_pos = pos + DIRS[move]
            valid_move = !new_pos.any?(&:negative?) && !!keypad.dig(new_pos[1], new_pos[0])
            pos = new_pos if valid_move
          end

          pos
        }
        .map { |pos| keypad[pos[1]][pos[0]] }
        .join
    end
  end
end
