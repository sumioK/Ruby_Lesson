require "./drink"
require "./food"

menu1 = Food.new(name: "ピザ", price: 800)
menu2 = Food.new(name: "すし", price: 1000)
menu3 = Drink.new(name: "コーラ", price: 300)
menu4 = Drink.new(name: "お茶", price: 200)

menus = [menu1 , menu2 , menu3 ,menu4]
index = 0

menus.each do |menu|
    puts "#{index}." + menu.info
    index += 1
end

puts "---------------"
puts "メニューの番号を選択してください"

order = gets.chomp.to_i
selected_menu = menus[order]
puts "選択されたメニュー#{selected_menu.name}"

puts "個数を入力してください(3個以上で100円引き)"
count = gets.chomp.to_i
puts "お会計は#{selected_menu.get_total_price(count)}円です"