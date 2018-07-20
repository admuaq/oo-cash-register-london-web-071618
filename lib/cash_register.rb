require "pry"
class CashRegister

  attr_accessor :total, :discount, :quantity, :basket, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @basket = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)

  self.total += price * quantity

  quantity.times do
    @basket << title
  end

  self.last_transaction = price * quantity
end

def apply_discount
#binding.pry
  if discount != 0
  self.total = total - (@total * (@discount.to_f/100))

    "After the discount, the total comes to $#{self.total.to_i}."
  else
    "There is no discount to apply."
  end

end

def items
  self.basket
end

def void_last_transaction
  #binding.pry
  self.total = self.total - self.last_transaction
end

end
