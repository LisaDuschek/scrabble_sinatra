require('rspec')
require('scrabble')

describe('String#scrabble') do

  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end

  it("returns a scrabble score for a word") do
    expect("and".scrabble()).to(eq(4))
  end

  it("should be a legitimate English word") do
    # HOW????
  end
end
