require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

# YOUR TEST CODE HERE
RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect( perimeter(5) ).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect( perimeter(5, 10) ).to eq(30)
  end
end

RSpec.describe "average" do
  it "should return an average" do
    grade_list = [4, 5, 6]
    expect( average(grade_list) ).to eq(5)
  end
end

RSpec.describe "rankings" do
  it "should return a number and students name" do
    student = ["Tom", "Dick", "Harry"]
    expect( rankings(student) ).to eq("1. Tom\n2. Dick\n3. Harry\n")
  end
end

RSpec.describe "greet" do
  it "should return a prefered language greeting and name" do
    expect{ greet("Miguelito", "spanish") }.to output("Hola Miguelito!\n").to_stdout
    expect{ greet("Aceline", "french") }.to output("Bonjour Aceline!\n").to_stdout
    expect{ greet("Weegee", "italian") }.to output("Ciao Weegee!\n").to_stdout
  end

  it "should return 'HI' and the user inputed name" do
    expect { greet("Mark") }.to output("Hi Mark!\n").to_stdout
  end
end

RSpec.describe "print_puzzle" do
  it "will return a - if a letter is not in the word, otherwise will return the inputed letter" do

    expect { print_puzzle("application", ["e","p"]) }.to output("_ p p _ _ _ _ _ _ _ _ ").to_stdout
  end

end

RSpec.describe "divisible_by_three" do
  it "will check if a number is divisable by 3" do
    expect(divisible_by_three(18)).to eq(true)
    expect(divisible_by_three(23)).to eq(false)
  end
end

RSpec.describe "perfect_square?" do
  it "will check to see if a number is a perfect square" do
    expect{ perfect_square?(0) }.to raise_error("number must be greater than or equal to one")
    expect(perfect_square?(5)).to eq(false)
    expect(perfect_square?(9)).to eq(true)
  end
end
