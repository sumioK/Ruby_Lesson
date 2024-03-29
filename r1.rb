# printメソッド

    # \nは改行を意味する
    # print ("Hello, Ruby.\n")
    # print ("Hello, RUBY!\n")
    # print ("Hello,\nRuby.\n")

    # \の後に"を入れるとstringオブジェクトとして扱われる
    # print("Hello, \"Ruby\".\n")

    # \を入力したい場合は\\と二回入力する
    # print("Hello,\\Ruby!\n")

    #""の代わりに''をし要すると中身がすべてstringとして扱われる
    # print ('Hello,\nRuby.\n')
    # 例外として文字列として'を使用したいときは\を使用する
    # print('Hello, \\ \'Ruby\'.')

    #printメッソドの()は省略することができる
    # print "Hello, Ruby.\n"

    # ,で区切ることで順番に表示できる
    # print "Hello" , "," , "Ruby" , ".\n'"

    # 縦にメソッドを並べると上から順に実行される
    # print "Hello"
    # print ","
    # print "Ruby"
    # print "."
    # print "\n'"



#putsメッソド...\nを記述しなくても文字列の最後で必ず改行する

    # puts "Hello, Ruby"
    # puts "Hello," , "Ruby."


# pメソッド...string型かinteger型かをわかるように表示してくれる

    # puts "100"
    # puts 100
    # p "100"
    # p 100
    # puts "Hello,\n\tRuby."
    # p "Hello,\n\tRuby."


# 数値の表示と計算

    # puts(10)
    # puts (1 + 1)
    # puts (15 - 3)
    # puts (3 * 5)
    # puts (50 / 5)
    # puts (18 % 7)

    # 平方根
    # puts Math.sqrt(2)
    # 三角関数
    # puts Math.sin(3.1415)


# 変数

    # alphabet = "abcdefg"
    # num = 10
    # age = 18
    # name = "TAKAHASHI"
    # puts alphabet , num , age , name


# 変数を使用した表面積の計算
    
    # x = 10
    # y = 20
    # z = 30
    # area =(x * y + y * z + x * z) * 2
    # volume = (x * y * z)
    # print "表面積=" , area, "\n"
    # print "体積=" , volume, "\n"

    
# ""内に#{変数名}と書くことで文字列の中に変数を埋め込むことができる。
    
    # print "表面積=#{area}\n"
    # print "表面積=#{50/5}\n"


#コメントアウト
=begin
    beginとendを
    記述すると
    その範囲内がすべてコメントアウトされる
=end


# 条件分岐

    # p (2 == 2)
    # p (2 == 4)
    # p (5 != 6)
    # p (1 < 5)
    # p (18 >= 18)

    # a = 10
    # if a >= 10 then
        # print"greater\n"
    # end
    # if a <= 9 then
        # print "smaller\n"
    # end

    # if a >=10 
        # print "greater\n"
    # else
        # print "smaller\n"
    # end


# 繰り返し処理...基本文法はwhile 回数が決まっているときはtimesメソッドを使用できる

    # i = 1
    # while i <=10
        # print i , "\n"
        # i = i + 1
    # end
 
    # 5.times do
        # print "All work and no play makes Jack adull boy.\n"
    # end