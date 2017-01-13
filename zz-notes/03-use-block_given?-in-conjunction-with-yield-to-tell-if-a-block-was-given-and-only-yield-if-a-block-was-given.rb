# didn't need to include/import time

def measure( n= 1, &block )
  before= Time.now
  
  n.times do
    yield if block_given?
    # block.call if block_given?
  end
  
  after= Time.now
  
  avg_time_per_call= (after - before) / n
end