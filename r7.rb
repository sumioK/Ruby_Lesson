#メソッドの定義
    # def hello(name)
        # puts " hello , #{name}"
    # end
    # hello("Ruby")

#メソッドにはデフォルト値を設定できる。引数が設定されていない場合はデフォルトで実行される
    # def hello (name = "Ruby")
        # puts "Hello , #{name}"
    # end
    # hello()
    # hello("Newbie")

#メソッドの戻り値
    # def volume (x , y , z)
        # return x * y * z
    # end
    # p volume(2 , 3 , 4 )
    # p volume(10 , 20 , 30)

#最後に得られる値が戻り値とされるためreturnを省略すると最後の結果が戻る(最後の文とは限らない)
    # def area (x , y , z)
        # xy = x * y
        # yz = y * z
        # zx = z * x
        # (xy + yz + zx) * 2
    # end
    # p area(2 , 3 , 4)
    # p area(10 , 20 , 30)


#ブロック付きメソッドの定義
    # def myloop
        # while true
            # yield
        # end
    # end

    # num = 1
    # myloop do
        # puts "num is #{num}"
        # break if num > 10
        # num *=2
    # end

# 引数の数が不定なメソッド
    # def foo(*args)
        # args
    # end

    # p foo(1 , 2 , 3)

#キーワード引数...(キーワード:デフォルトの引数)で指定する。デフォルトの引数を指定しないこともできる
    # def area(x:0 , y: 0 , z:0)
        #  xy = x * y 
        #  yz = y * z
        #  zx = z * x
        # (xy + yz + zx) *2
    # end
    # p area(x:2 , y:3 , z:4)
    # p area(z:4 , y:3 , x:2)
    # p area(x:2 , z:3)

#hashで引数を渡す
    # def area(x:0 , y:0 , z:0)
        # xy = x * y
        # yz = y * z
        # zx = z * x
        # (xy + yz + zx) *2
    # end
 
    #  args1 = {x:2 , y:3 , z:4}
    #  p area(args1)
  
    #  args2 = {x:2 , z:3}
    # p area(args2)