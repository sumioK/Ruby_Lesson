#多重代入...一つの式で複数の変数へ代入できる(あまり関係のない変数同士を多重代入するとプログラムがわかりずらくなるため注意)
    #first , second , third = 1 , 2 , 3
    
    #変数の一つに*を付けると余った値の配列が代入される。
    # first , second , *rest = 1 , 2 , 3 , 4 , 5
    # p first , second , rest
    # first , *second , rest = 1 , 2 , 3 , 4 , 5
    # p first , second , rest


#変数の値を入れ替える
    # a , b = 0 , 1
    # tmp = a
    # a=b
    # b= tmp
    # p [ a , b ]
    
    # 多重代入を使用すると↑の分がこれだけ短くできる。
    # a , b = 0 , 1 
    # a , b = b , a
    # p [ a , b ]
    
    # 配列から自動的にデータを取り出して、1,2に代入できる
    ary = [1 , 2]
    a , b = ary
    p a
    p b