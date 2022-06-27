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
    class Receipt
        def initialize(name)
            @name = name
            @lines = []
        end
 
        def lines=(lines)
            @lines = lines
        end
  
        def calc
            total = 0
            @lines.each do |line|
                total += line[:price] * line[:num]
            end
            total
        end
  
        def output
            puts "レシート #{@name}"
            @lines.each do |line|
                puts "#{line[:name]} #{line[:price]}円 x #{line[:num]}"
            end
            puts "合計金額: #{calc}円"
        end
    end

     r = Receipt.new("ストアA")
     r.lines = [{name: "卵" , price: 200 , num: 1} , {name: "大根" , price: 100 , num: 2}] 
     r.output


     


    # class HelloWorld
        # def initialize(myname)
        #   @name = myname
        # end
    #   
        # def hello
        #   puts "Hello, world. I am #{@name}"
        # end
# 
        # def hi
            # puts "Hi my name is #{@name}"
        # end
    # end
    #   
    #   
    #   ruby = HelloWorld.new("Ruby")
    #   bob = HelloWorld.new("Bob")
    #   alice = HelloWorld.new("Alice")
    #   
    #   ruby.hello
    #   bob.hello
    #   alice.hello
    #   ruby.hi