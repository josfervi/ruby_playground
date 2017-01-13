# file structure:
# lib/xx_filename.rb
# spec/xx_filename_spec.rb

# to run do
# bundle exec rspec spec/xx_filename_spec.rb

require "xx_filename"

describe "function1" do
  it "does function1 arg1_value and arg2_value" do
    expect(function1(arg1_value, arg2_value)).to eq(hand_computed_result)
  end
  
  it "does function1 arg1_another_value and arg2_another_value" do
    expect(function1(arg1_another_value, arg2_another_value)).to eq(hand_computed_result)
  end
  
  it "function1s two negative numbers" do
    expect(function1(..., ...)).to eq(...)
    expect(function1(..., ...)).to eq(...) # NOT SURE IF IT'S GOOD STYLE TO HAVE TWO EXPECT STATEMENTS IN ONE IT-DO-END BLOCK
  end
  
  ...
  
  it "function1s two large numbers" # without the do-end block, will be marked as not yet implemented / pending tests when you run rspec
end

describe "function2" do
  it "does function2 blah and blah" do
    expect ...
  end
  
  ...
end

...