
# メソッドの定義

def sing
	puts "lalala~~~"
end

sing()


def sing2(word)
	puts word + word + word + "~~~~"
end

sing2("hoge")


def sing3(word="wa")
	puts word + word + word + "~~~~"
end

sing3()
sing3("hoge")


def sing4(word="wa", num)
	s = ""
	for i in 1..num do
		s += word		
	end
	s += "~~~~"

	return s
end

res = sing4("hu",20) + "fuga"

p res





# クラスを作って、メソッドを定義して、インスタンスを作る

class Monster

	def initialize(name) #コンストラクタ的な
		@name = name # @~~~ は、インスタンス変数と呼ぶ（プロパティ）
		@hp = 100 + rand(100)
		printf("%s appeared. His hp is %d\n", @name, @hp)
	end

	def damage
		@hp -= 10 + rand(10)
		printf("%s's hp is now %d\n", @name, @hp)
		printf("%s is now dead!\n", @name ) if @hp < 0
	end

	def heal
		@hp += 10 +rand(10)
		printf("%s's hp is now %d\n", @name, @hp)
	end

end


slime = Monster.new("slime")


slime.damage
slime.damage