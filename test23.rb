def DuplicationHash (array)
	key = array.select {|num| array.count(num) > 1 }.uniq.sort
	value =  key.map {|num| array.count(num)}
	new_array = [key, value].transpose.to_h
	p new_array
end

a1 = [1,4,5,5,6,6,6,2,2,8,8,9,10]
DuplicationHash (a1)
