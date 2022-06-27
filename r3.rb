#コマンドラインからのデータ入力
# コマンドライン引数を入力する...ruby ruby3.rb 1st 2nd 3rd 4th 5th

    # puts "最初の引数 : #{ARGV[0]}"
    # puts "2番目の引数 : #{ARGV[1]}"
    # puts "3番目の引数 : #{ARGV[2]}"
    # puts "4番目の引数 : #{ARGV[3]}"
    # puts "5番目の引数 : #{ARGV[4]}"

    # name = ARGV[0]
    # puts "Happy Birthday , #{name}"

    #引数から取得下データは文字列となっているため、数字を扱うにはto_iメソッドを使用する
        # num0 = ARGV[0].to_i
        # num1 = ARGV[1].to_i
        # puts "#{num0} + #{num1} = #{num0 + num1}"

#ファイルからテキストデータを読み込んで表示する

    # filename = ARGV[0]             #filenameという変数にARGV[0]を代入
    # file = File.open(filename)     #filenameという名前のファイルを開き読み込むためのオブジェクトを返す
    # text = file.read               #readメソッドでデータを読み込み、結果をtextに代入
    # print text                     #出力
    # file.close
    
    # filename = ARGV[0]
    # text = File.read(filename)
    # print text

    #一行ずつデータを読み込んで表示する...each_lineメソッド
    
    # filename = ARGV[0]
    # file = File.open(filename)
    # file.each_line do |line|
        # print line
    # end
    # file.close

    #ファイルの野化から特定のパターンの行のみを選んで出力する
    
    # pattern = Regexp.new(ARGV[0])
    # filename = AEGV[1]
    # 
    # file = File.open(filename)
    # file.each_line do |line|
        # if pattern =~ line
            # print line
        # end
    # end
    # file.close
        

#メソッドの作成
    # def hello
        # puts "Hello , Ruby"
    # end

    # hello()


#別のファイルを取り込む(require 使いたいライブラリのファイル名)もしくは(require_relative ファイル名)
    # require_relative "r3-1" #r3-1からhelloメソッドを読み込んでいる
    # hello()

    #  require "date" #dateライブラリは標準装備されているメソッド
    
    #  days = Date.today - Date.new(1996 , 2 , 26)
    #  puts(days.to_i)