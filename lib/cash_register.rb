
class CashRegister
  
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0) #optional discount so default to nil
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
      if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction = @total
    @total
  end
  
   def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
   def void_last_transaction
     
    self.total = self.total - self.last_transaction
  end
  
end 