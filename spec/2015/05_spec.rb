RSpec.describe Year2015::Day05 do
  let(:input_1) do
    StringIO.new(
      <<~END
        ugknbfddgicrmopn
        aaa
        jchzalrnumimnmhp
        haegwjzuvuyypxyu
        dvszwmarrgswjxmb
      END
    )
  end

  let(:input_2) do
    StringIO.new(
      <<~END
        qjhvhtzxzqqjkmpb
        xxyxx
        uurcxstgmygtbstg
        ieodomkazucvgmuy
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input_1)).to eq(2)
  end

  it "solves Part Two" do
    expect(subject.part_2(input_2)).to eq(2)
  end
end
