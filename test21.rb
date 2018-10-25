def Duplication (array)
	if array.size > array.uniq.size
		p "true"
	else 
		p "false"
	end
end

a1 = [1,2,2,4]
Duplication (a1)