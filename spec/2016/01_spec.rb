RSpec.describe Year2016::Day01 do
  let(:input) do
    StringIO.new(
      <<~END
        R8, R4, R4, R8
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input)).to eq 8
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq 4
  end
end
