require "./order"

class Drink < Menu
attr_accessor :amount

def info
    return "#{self.name}#{self.price}円(#{self.amount}ml)"
end
end