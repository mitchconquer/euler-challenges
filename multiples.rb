answers = []
1000.times{ |i| answers << i if i % 3 == 0 || i % 5 == 0 }
print "Answer = #{answers.inject(0){ |sum, addend| sum += addend }}"