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

# 計算ソフト
x = 10
y = 20
z = 30
area =(x * y + y * z + x * z) * 2
volume = (x * y * z)
print "表面積=" , area, "\n"
print "体積=" , volume, "\n"