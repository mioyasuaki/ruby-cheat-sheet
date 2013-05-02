


# 出力系

print "Hello World", "world" #普通に表示

puts "Hello World", "again" #改行付きで表示

p "Hello World 3" #オブジェクト型が分かるように表示


# コメント


=begin

コメント複数行
=の前に、tabや、スペースが入るとダメ。

Sublime Text なら、Command + / で
複数行 # のコメントアウトができるので、そちらの方が便利。

=end



# 変数

x = 3543;
p x;


p x = "hello".length
p "hello".length


x = Rational(3,4)	# 分数 3/4という意味
x = 5 ** 20 		# 5の20乗
x = Rational(2,3) + Rational(5,6) # 2/3 + 5/6 という意味（分数）

p 10.5.to_i		# integer に型変換 
p "10.5".to_i	# integer に型変換 

p 10.4.to_r		# 
p 10.5.round	# ceil, floor
p rand(100)		# 0-100 でランダム
p Math.sqrt(9)	# Mathで、平方根




# 文字列関係
# 文字列オブジェクトに対する、操作


x = "hello" # 変数や特殊文字を展開
y = 'hello' # 展開しない



# 特殊文字 ¥n ¥t

puts "hello\nworld"	# 改行が展開
puts 'hello\nworld'	# 改行されない


name = "mio"
puts "my name is #{name}"	＃ 名前が展開

# coding:utf-8
puts "こんにちわ" # 日本語出力がある場合は、# coding:utf-8 という行が必要



p "hello".upcase		# 大文字変換
p "hello".reverse		# 文字を逆順に
p "hello".index("o")	# o が含まれる位置を返す
p "hello".include?"o"	# o が含まれるかどうか、 true / false





s = "hello"

s1 = s.upcase! # 破壊的メソッド という。 s1 = s = s.upcase っていう意味。

p s
p s1




# 配列定義など


names = ["taguchi", "fkoji", "dotinstall"]

p names[1]

p names[1..2]	# 1〜2の配列

p names[0...2]	# 最後は含まない配列

p names[-1]		# 後ろから数える



# names[0] = "mio"

# names[0..1] = ["mio","mio2"]

# names[1,2] = ["a","b"]

names[1,0] = ["c","d"]


p names




# 演算子について

a = [1,2,3,4]
b = [3,4,5,6]


# 演算子

p a & b # 共通部分だけを出す
p a | b # 重複しないように出す
p a - b
p a + b




# 配列操作


a = [1,5,4,3,5,4,8]

# p a
# p a.uniq
# p a.sort


# unshift / push 追加
# shift / pop 削除

# p a.push(10)





# ハッシュ（連想配列）


sales = {"tanaka"=>100, "taguchi"=>150, "taniguchi"=>300}

p sales
p sales["tanaka"]





sales = {"tanaka"=>100, "taguchi"=>150, "taniguchi"=>300}

# p sales.size #要素の数

# p sales.empty? #空かどうか

p sales.has_key?("tanaka") #keyがあるかどうか

p sales.has_value?("gaoigja")

# core reference の hashオブジェクトを見れば OK




# 日付時間


t = Time.now	# 現在時刻
t = Time.mktime(2011, 2, 24, 9, 0, 0)

p t

p t + 10 # 単位は、秒。（ミリ秒ではない）

p t.strftime("%Y/%m/%d")





# printf

x = "taguchi"
y = 25


printf("%s's score is %d \n", x, y)

printf("%s's score is %10d \n", x, y)

printf("%s's score is %-10d \n", x, y)

z = sprintf("%s's score is %010d \n", x, y) 

p z




# 条件分岐

score = 65

if score >= 80
	puts "great!"
elsif score >= 60
	puts "so so..."
else
	puts "not so great"
end




score = 65

if score >= 80
	puts "great!"
end

puts "great" if score >= 80



# 条件演算子 if ...else ...
# (条件) ? 値1 : 値2（条件が真なら1を、偽なら2を返す

a = 50
b = 20

max = a > b ? a : b # 大きいほうを返す
min = a < b ? a : b

puts max, min



# 比較演算子

puts "match!" if /taguchi/ =~ "my name is taguchi"




# switch的な　case文

signal = "yellow"

case signal
when "red"
	puts "stop!"
when "green","blue"
	puts "go!"
when "yellow"
	puts "caution"
else
	puts "signal is broken"
end




# for文的な

10.times do
	puts "hi! "
end

10.times do |i|
	puts "#{i} hi! "
end





# for文もある

users = ["taguchi", "fkoji", "dotinstall"] 

for user in users do
	puts user
end

users.each do |user|
	puts user
end

for i in 1..10 do
	puts i
end



# ハッシュに対してのループ

scores = {"taguchi" => 200, "fkoji" =>300, "dotinstall"=>120} 

scores.each do |name, score|
	printf("%s's score is %d\n", name, score )
end



# while 

i = 1

while i <= 10
	puts i
	# i = i + 1
	i += 1
end




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



