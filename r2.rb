# 配列(Array)

    # names = ["小林" , "林" , "高野" , "盛岡"]
    # print "最初の名前は" ,names[0] ,"です\n"
    # names[0] = "田中"
    # print "変更後の名前は" ,names[0] ,"です\n"
    # names[4] ="山崎"
    # print names , "\n"
    # print names.length


# 配列と繰り返し

    # names = ["小林" , "林" , "高野" , "盛岡"]
    # names.each do |n|
        # puts n
    # end

    
# Hash..文字列やシンボルをキーにしてオブジェクトを格納する

    # song = {:title => "Paranoid Android" , :artist => "Radiohead"}
    # person = {"名前" => "高橋" , "仮名" => "タカハシ"}
    # mark = {11 => "Jack" , 12 => "Queen" , 13 =>"King"}
    # person1 = {name: "後藤" , furigana: "ゴトウ"}
    # print person1[:name]
    # person1[:furigana] = "gotou"
    # print person1[:furigana]
    # person1[:address] = "日本"
    # print person1

# Hashの繰り返し..キーと値の組み合わせを取り出す
   
    # address ={name: "高橋" , furigana:"高橋"}
    # address.each do |key, value|
        # puts "#{key} : #{value}"
    # end


#正規表現..文字列とパターンの一致を調べる、パターンを使った文字列の切り出しができる

    # print /Ruby/ =~ "Yet Another Ruby Hacker,"
    # print /Ruby/i =~ "ruby"

# if文と組み合わせて林を含む名前だけを表示している。

    # names = ["小林" , "田中" , "山川" , "林"]
    # names.each do|name|
        # if /林/ =~ name
            # puts name
        # end
    # end