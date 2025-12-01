RSpec.describe Year2024::Day02 do
  let(:input) do
    StringIO.new(
      <<~END
        7 6 4 2 1
        1 2 7 8 9
        9 7 6 2 1
        1 3 2 4 5
        8 6 4 4 1
        1 3 6 7 9
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input)).to eq 2
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq 4
  end
end
