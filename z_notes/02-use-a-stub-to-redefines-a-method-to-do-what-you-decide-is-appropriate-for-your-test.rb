# from 06_performance_monitor.rb

# # Topics
#
# * stubs
# * blocks
# * yield
#
# # Performance Monitor
#
# This is (a stripped down version of) an actual useful concept: a
# function that runs a block of code and then tells you how long it
# took to run.

# ABOUT stubs
#
# Static Stub
# allow(Time).to receive(:now).and_return(@eleven_am)
#  redefines Time.now so that it returns the value of instance variable @eleven_am
#
# Dynamic Stub
# allow(Time).to receive(:now) { fake_time }
#  redefines Time.now so that it returns the value of fake_time
#  there's a bit of scoping 'magic' going on, so that
#  Time.now will receive the current value of fake_time, instead of just the initial value every time
# 
# a stub redefines a method to do whatever you decide for your test.
# Usually they are used to avoid non-deterministic methods
# (like Time.now, which obviously returns a different value every time
# and is thus very hard to test), or to gloss over methods that do not relate to the current test.
#
# There's a few ways to write stubs.
# 
# You can write "static" stubs (that just return a value,
# and unlike the block form cannot compute it fresh each time).
# The first example you've shown is of a static stub.
#
# The second example you've shown uses the block form,
# which allows you to dynamically decide the return value for the method
# and so can be used for quite complicated things
# (essentially you can entirely redefine the method,
# although this is not usually a good idea!).


# ABOUT @
# @ makes @eleven_am an instance variable

require "06_performance_monitor"

require "time"  # loads up the Time.parse method -- do NOT create time.rb!

describe "Performance Monitor" do
  before do
    @eleven_am = Time.parse("2011-1-2 11:00:00") 
  end

  it "takes about 0 seconds to run an empty block" do
    elapsed_time = measure { }

    expect(elapsed_time).to be_within(0.1).of(0)
  end

  it "takes exactly 0 seconds to run an empty block (with stubs)" do
    allow(Time).to receive(:now).and_return(@eleven_am)

    elapsed_time = measure { }

    expect(elapsed_time).to eq(0)
  end

  it "takes about 1 second to run a block that sleeps for 1 second" do
    elapsed_time = measure { sleep 1 }

    expect(elapsed_time).to be_within(0.1).of(1)
  end

  it "takes exactly 1 second to run a block that sleeps for 1 second (with stubs)" do
    fake_time = @eleven_am
    allow(Time).to receive(:now) { fake_time }

    elapsed_time = measure do
      fake_time += 60  # adds one minute to fake_time
    end

    expect(elapsed_time).to eq(60)
  end

  it "runs a block N times" do
    n = 0

    measure(4) { n += 1 }

    expect(n).to eq(4)
  end

  it "returns the average time, not the total time, when running multiple times" do
    run_times = [8,6,5,7]
    fake_time = @eleven_am
    allow(Time).to receive(:now) { fake_time }

    average_time = measure(4) do
      fake_time += run_times.pop
    end

    expect(average_time).to eq(6.5)
  end

  it "returns the average time when running a random number of times for random lengths of time" do
    fake_time = @eleven_am
    allow(Time).to receive(:now) { fake_time }
    number_of_times = rand(10) + 2

    average_time = measure(number_of_times) do
      delay = rand(10)
      fake_time += delay
    end

    expect(average_time).to eq((fake_time - @eleven_am).to_f/number_of_times)
  end
end