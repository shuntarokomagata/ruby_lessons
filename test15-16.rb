hash = {key1: 1, key2: 2, key3: 3}
hash.store("key4", 4)

hash.each do |key, value|
	puts "#{key} is #{value}" 
end


hash.each do |key, value|
	value = value * 2
	puts "#{key} is #{value}" 
end