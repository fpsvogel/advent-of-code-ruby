require "benchmark"

# Benchmark different ways of detecting whether a string contains a vowel
Benchmark.bm do |x|
  x.report("Regexp") do
    100_000.times do
      "HELLOhello".match?(/[aeiou]/i)
    end
  end

  x.report("include?") do
    100_000.times do
      str = "HELLOhello"
      %w[aeiouAEIOU].any? { str.include? it }
    end
  end
end
