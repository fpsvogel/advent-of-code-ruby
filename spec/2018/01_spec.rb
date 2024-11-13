RSpec.describe Year2018::Day01 do
  let(:input) {
    StringIO.new(
      <<~IN
        +1
        -2
        +3
        +1
      IN
    )
  }

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(3)
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq(2)
  end
end
