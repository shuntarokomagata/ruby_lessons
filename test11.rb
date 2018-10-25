array1 = [1,2,3,4,5,6,7,8]
array2 = []
sum = 0

array1.each do |num|
	array2.push(num)
	sum += num

	if sum > 15
		break
	end
end

p array2