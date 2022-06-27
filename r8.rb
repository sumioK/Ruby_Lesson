#インスタンスの生成...各クラスの.newメソッドを使う(配列の場合は代入でも可能)
    # ary = Array.new
    # ary1 = ["a" , "b" , "c"]
    # p ary
    # p ary.class 
    # p ary1.class
    # p "abc0".class
    # あるオブジェクトがあるクラスのインスタンスかどうか判断するにはinstance_of?()を使用する
    # p ary.instance_of?(Array)
    # p ary.instance_of?(String)

#サブクラスとスーパークラス...継承元のクラスをスーパークラス，継承後のクラスをサブクラスという
    # str = "This is a String."
    # p str.is_a?(String) #strはStringクラスに属するか
    # p str.is_a?(Object) #strはObjectクラスに属するか

#クラスを作る
    # class Receipt
        # def initialize(name)
            # @name = name
            # @lines = []
        # end
#  
        # def lines=(lines)
            # @lines = lines
        # end
#   
        # def calc
            # total = 0
            # @lines.each do |line|
                # total += line[:price] * line[:num]
            # end
            # total
        # end
#   
        # def output
            # puts "レシート #{@name}"
            # @lines.each do |line|
                # puts "#{line[:name]} #{line[:price]}円 x #{line[:num]}"
            # end
            # puts "合計金額: #{calc}円"
        # end
    # end

    #  r = Receipt.new("ストアA")
    #  r.lines = [{name: "卵" , price: 200 , num: 1} , {name: "大根" , price: 100 , num: 2}] 
    #  r.output



#メソッドの呼び出しを制限する

    # class AccessTest
        # def pub
            # puts "pub is a public method"
        # end
# 
        # public :pub     #pubをpublicに設定
# 
        # def priv
            # puts "priv is a private method"
        # end
        # private :priv   #privをprivateに設定
    # end
# 
    # access = AccessTest.new
    # access.pub
    # access.priv
# 
    # class AccessTest
        # public          #引数を指定しないとこれ以下に定義したメソッドはpublicになる
# 
        # def pub
            # puts "pub is a public method"
        # end
# 
        # private         #これ以降に定義したメソッドはprivateになる
# 
        # def priv
            # puts "priv is a private method"
        # end
    # end


#メソッドを外から参照できるが変更できないようにする

    # class Point
        # attr_accessor :x, :y
        # protected :x=, :y=
# 
        # def initialize(x=0.0 , y=0.0)
            # @x, @y = x, y
        # end
# 
        # def swap(other)
            # tmp_x, tmp_y = @x, @y
            # @x, @y = other.x , other.y 
            # other.x , other.y = tmp_x , tmp_y
# 
            # return self
        # end
    # end
# 
    # p0 = Point.new
    # p1 = Point.new(1.0, 2.0)
    # p [p0.x, p0.y]
    # p [p1.x, p1.y]
# 
    # p0.swap(p1)
    # p [ p0.x , p0.y]
    # p [p1.x, p1.y]


#継承する...既存のクラスには変更を加えず新しいクラスを作る

    # class RingArray < Array #superclassを指定
        # def[] (i)           #演算子[]の再定義
            # idx = i % length  #新しいインデックスを求める
            # super(idx)      #スーパークラスの同名メソッドを呼ぶ
        # end
    # end
    # 
    # wday = RingArray["日" ,"月" , "火" , "水" , "木", "金" , "土"]
    # p wday[6]


#alias...定義されたメソッドの名前を変更する

    #class C1
    #    def hello
    #        "hello"
    #    end
    #end
#
    #class C2 < C1
    #    alias old_hello hello       #helloメソッドをold_helloメソッドに名前変更
    #                            
    #    def hello                   #改めてhelloメソッドを定義     
    #        "#{old_hello}, again"
    #    end
    #end
#
    #obj = C2.new
    #p obj.old_hello
    #p obj.hello

#undef...定義されたメソッドをなかったことにする

    # undef メソッド名
    # undef : メソッド名


#特異クラス...特定のクラスにのみクラスメソッドを追加する

    # str1 = "Ruby"
    # str2 = "Ruby"
# 
    # class <<str1
        # def hello
            # "Hello, #{self}"
        # end
    # end
# 
    # p str1.hello
    # p str2.hello      #クラスメソッドが追加されていないためエラーとなる



#モジュール...クラスはデータと処理を表現する機能だが、モジュールは処理の部分だけをまとめる機能(インスタンスを持てない、継承できない)


    module HelloModule
        VERSION = "1.0"

        def hello(name)
            puts "Hello, #{name}."
        end
        module_function :hello      #moduleで作ったメソッドを呼び出せるようにするには module_functrion :メソッド名
    end

    p HelloModule::VERSION          #定数は::定数名で参照できる
    HelloModule.hello("Alice")

    include HelloModule
    p VERSION
    hello("Alice")