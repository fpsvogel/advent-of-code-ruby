RSpec.describe Year2017::Day01 do
  let(:input) {
    StringIO.new(
      <<~IN
        91122111112341212129
      IN
    )
  }

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(16)
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq(8)
  end
end
