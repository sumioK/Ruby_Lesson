#timesメソッド
    # 7.times do
        # puts "いちめんのなのはな"
    # end

    #|i|とすることで繰り返している回数を知ることができる
    # 7.times do |i|
        # puts "#{i}回目の繰り返しです。"
    # end


#for文
    #一般的なfor文
    # for 変数 in オブジェクト
        # 繰り返したい処理
    # end

    #数字が1-5まで変化するfor文
    # sum = 0 
    # for i in 1..5
        # sum += i
    # end
    # puts sum


#while文..trueの間繰り返す
    # i = 1
    # while i < 5
        # puts i
        # i += 1
    # end


#until文...falseの間繰り返す
    # sum = 0
    # i = 1
    # until sum >= 50
        # sum += i
        # i += 1
    # end
    # puts sum


#eachメソッド
    #一般的なeach文
    # オブジェクト.each do |変数|
        # 繰り返したい処理
    # end

    # names = ["awk" , "Perl" , "python" , "Ruby"]
    # names.each do |name|
        # puts name
    # end


#loopメソッド(breakまで永遠に繰り返す)
    # loop do
        # print "Ruby"
    # end


#繰り返しの制御
 puts "breakの例"
 i = 0
 ["perl" , "python" , "ruby" , "scheme"].each do |lang|
    i += 1
    if i == 3
        break
    end
    p [i, lang]
end

puts "nextの例"
i = 0
["perl" , "python" , "ruby" , "scheme"].each do |lang|
    i += 1
    if i == 3
        next
    end
    p [i , lang]
end