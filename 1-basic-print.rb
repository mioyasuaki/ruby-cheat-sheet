


# 出力系

print "Hello World", "world" #普通に表示

puts "Hello World", "again" #改行付きで表示

p "Hello World 3" #オブジェクト型が分かるように表示



# コメントは、頭に # を入れればOK。


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






# 演算子について

a = [1,2,3,4]
b = [3,4,5,6]


# 演算子

p a & b # 共通部分だけを出す
p a | b # 重複しないように出す
p a - b
p a + b




# printf

x = "taguchi"
y = 25


printf("%s's score is %d \n", x, y)

printf("%s's score is %10d \n", x, y)

printf("%s's score is %-10d \n", x, y)

z = sprintf("%s's score is %010d \n", x, y) 

p z







