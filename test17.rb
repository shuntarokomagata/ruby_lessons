range = 0..100

range.each do |num|
	if  num %15 == 0
	puts "#{num} FizzBuzz"

	elsif  num %3 == 0
		puts "#{num} Fizz"
	
	elsif  num %5 == 0
		puts "#{num} Buzz"
	
	else
		puts "#{num}"

	end
end