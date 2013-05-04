

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


