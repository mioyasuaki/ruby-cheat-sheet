
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



# 配列操作

a = [1,5,4,3,5,4,8]

p a.uniq #重複を消す
p a.sort #並び替え

a.unshift(8) #先頭に8を追加
a.push(8) #末尾に8を追加

a.shift #先頭の値を取り出して、削除
a.pop #末尾の値を取り出して、削除



# 含むかどうか

a = [1, 4, 5, 8]

a.include?(5)
#=> true

a.include?(10)
#=> false



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





