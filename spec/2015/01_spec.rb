RSpec.describe Year2015::Day01 do
  let(:input) do
    StringIO.new(
      <<~END
        (())()())((((()(()())(((((())))())))())())(
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(1)
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq(9)
  end
end
