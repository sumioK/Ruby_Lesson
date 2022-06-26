#条件判断
# if文
    # a = 10
    # b = 20

    # if a > b
        # puts "aはbより大きい"
    # elsif a < b
        # puts "aはbより小さい"
    # else
        # puts "aはbと同じ"
    # end

#unless文(条件がfalseだった場合に処理が実行される)
    # a = 10
    # b = 20
    # unless a > b
        # puts "aはbより大きくない"
    # end

#case文
    # tags = ["A" , "IMG" , "PRE"]
    # tags.each do |tagname|
        # case tagname
        # when "P" , "A" , "I" , "B" , "BLOCKQUOTE0"
            # puts "#{tagname} has a child."
        # when "IMG" , "BR"
            # puts "#{tagname} has no child." 
        # else
            # puts "#{tagname} cannnot be used"
        # end
    # end

#if修飾子とunless修飾子...ifとunlessは式の後ろに書くこともできる
    # a , b = 10 , 5
    # puts "aはbよりも大きい" if a >b

