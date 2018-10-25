def DuplicationNum (array)
	p array.select {|num| array.count(num) > 1}.uniq.sort 
end

a1 = [1,4,5,5,6,6,6,2,2,8,8,9,10]
DuplicationNum (a1)