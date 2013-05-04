
# 日付時間


t = Time.now	# 現在時刻
t = Time.mktime(2011, 2, 24, 9, 0, 0)

p t

p t + 10 # 単位は、秒。（ミリ秒ではない）

p t.strftime("%Y/%m/%d")
