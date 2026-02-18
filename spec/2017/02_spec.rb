RSpec.describe Year2017::Day02 do
  let(:input_1) do
    StringIO.new(
      <<~END
        5 1 9 5
        7 5 3
        2 4 6 8
      END
    )
  end

  let(:input_2) do
    StringIO.new(
      <<~END
        5 9 2 8
        9 4 7 3
        3 8 6 5
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input_1)).to eq 18
  end

  it "solves Part Two" do
    expect(subject.part_2(input_2)).to eq 9
  end
end
