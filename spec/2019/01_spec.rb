RSpec.describe Year2019::Day01 do
  let(:input) {
    StringIO.new(
      <<~IN
        100756
      IN
    )
  }

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(33583)
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq(50346)
  end
end
