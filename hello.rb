=begin 
msg =  "hello world!"
p msg

p "hello world".length

 x = 10
 y = 20.5
 z = 1/3r

p x % 3
p x ** 3
p x % 3
p z * 2

p y.round

name = "xxx"

x = "hello\t world, #{name}" (変数展開、挿入が可能)
y = 'hello world, #{name}'

puts x
puts y

! 破壊的メソッド（元データも書き換え）
? 真偽値を返すメソッド


s = "sss"
puts s.upcase!
puts s

s = "sss"
p s.empty?

#配列
sales = [5, 8, 4]

sales[0...2] = [1,2]

sales [1, 0] = [10,11,12]

p sales.size
p sales.sort.reverse
p sales.push(100)
p sales


# ハッシュ (key + value)
sales = {"abe" => 100, "sato" => 300}
p sales["abe"]

sales = {:abe => 100, :sato => 300} #シンボル
p sales[:abe]

sales = {abe: 100, sato: 300} #シンボル
p sales[:abe]

p sales.size
p sales.keys
p sales.values
p sales.has_key?(:tagushi)

#型変換
a = 10
b = "5"

p a + b.to_f
p a.to_s + b

h = {taguchi: 100, fukuoji: 200}
p h.to_a.to_h


s = "hello"
s = %(he/l"lo)
p s

a = ["a","b","c"]
a = %w(a,b,c)
p a

&&(AND) ||(or) !(not)

score = 20
puts "OK" if score > 60

b,c = 10, 20 #多重代入
a = b > c ? b:c　#条件分岐
puts a


signal ="green"

case signal
when "red"
	puts "STOP"
when "green"
	puts "GO"
when "yelloww"
	puts "CAUTION"
else 
	puts "wrong signal"
end

3.times do |i|
 if i == 1
	next
 end
 puts "#{i} hello" 
end


i = 0
while i < 3 do
	puts "#{i}: hello"
	i += 1
end 


for i in 0..2 do
	puts i
end

for color in ["red", "blue", "pink"] do
	puts  color
end

{"red"=> 200, "blue" =>400, "pink"=> 300}.each do |color,price|
	puts  "#{color}: #{price}"
end


def SayHi (name = "Steve")
	#puts "hello!" + name
	s = "hello!" + name
	return s
end

greet = SayHi()
puts greet


class User

	@@count = 0

	def initialize (name) 
		@name = name
		@@count += 1
		#newが呼ばれた際にHelloクラスのinitializeメソッドが呼び出され、
		 #newの引数がinitializeの引数に渡されます。
	end

	def sayHi #インスタンスメソッド		
		puts "hello, my name is #{@name}"
	end

	def User.sayHello #クラスメソッド		
		puts "hello from User class (#{@@count} users)"
	end
end


User.sayHello()

# classをnewメソッドを使ってインスタンス化
tom = User.new("Tom")
bob = User.new("Bob")

tom.sayHi()

User.sayHello()

bob = User.new("Bob")
bob.sayHi()
p bob.name
p bob.setName('Tom')
bob.sayHi()



t = Time.new(2013,12,25,12,32,22)
p t.strftime("Updated: %Y-%m-%d")

class AdminUser < User
	def sayHello
		puts "Hello from #{@name}"
	end
end

tom = AdminUser.new ("tom")

tom.sayHi
tom.sayHello



module Movie

	VERSION = 1.1

	def self.encode
		puts "encoding..."
	end

	def self.export
		puts  "exporting..."
	end
end

Movie.encode
Movie.export
p Movie::VERSION


module Debug	
	def info
		puts "#{self.class} debug info..."	end
	end

class Player
	include Debug

end 

class Monster
	include Debug
end

Player.new.info
Monster.new.info


class MyError < StandardError; end

x = gets.to_i

begin
	if x == 3
		raise MyError
	end
	p 100/x
rescue MyError
	puts "not 3!"
rescue => ex
	p ex.message
	p ex.class
	puts "stopped!"
ensure
	puts "---END---"

end

class User

	def sayHi #インスタンスメソッド		
		puts "hi!"
	end

end

tom = User.new("tom")
tom.name = "tom Jr"

p tom.name
tom.sayHi



class User
	@@count = 0

	def initialize (name) 
		@name = name
		@@count +=1 
	end

    def sayHi #インスタンスメソッド		
		puts "hello, my name is #{@name}"
	end

	def User.sayHello #クラスメソッド		
		puts "hello from User class (#{@@count} users)"
	end

end

class SuperUser < User
	def shout
		puts "HELLO from #{@name}"
	end
end

tom = User.new("Tom")
bob = SuperUser.new("Bob")

tom.sayHi()
bob.sayHi()
bob.shout()
User.sayHello()


class Person
  def initialize(item)
    @name = item
  end

  def hello
    puts "初めまして、", @name, "と申します"
  end
end

class Friend < Person
  def hello
    puts "よろしく、", @name,"です"
  end
end

def whoareyou(who)
  who.hello
end

yoko = Person.new("ヨーコ")
ai = Friend.new("アイ")

whoareyou(yoko) #=>初めまして、ヨーコと申します
whoareyou(ai) #=>よろしく、アイです

=end
class Book
  attr_accessor :title, :price

  def initialize(title, price)
    @title = title; @price = price
  end
end

book = Book.new("Programming Ruby", 1980)
puts book.title

book.price = 2000
puts book.price

