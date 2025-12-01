RSpec.describe Year2021::Day01 do
  let(:input) do
    StringIO.new(
      <<~END
        199
        200
        208
        210
        200
        207
        240
        269
        260
        263
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input)).to eq 7
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq 5
  end
end
