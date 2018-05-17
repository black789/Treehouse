def time_diff(&block)
  before = Time.now
  block.call
  after = Time.now
  diff = after - before
end

result = time_diff do
  5.times do 
    print "."
    sleep(rand)
  end
end 
printf("%s: %0.2f seconds\n" , "Time taken", result)
