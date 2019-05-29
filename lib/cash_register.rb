class CashRegister
  attr_accessor :total, :discount
  
 
  def initialize(discount=nil)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    quantity.times {@items << title}
    @total = @total + price*quantity
  end
  
  def apply_discount
     if @discount == nil
    "There is no discount to apply."
    elsif
    @total = (@total * (1 - @discount*0.01)).to_i
    "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    
  end
  
  
  
  
end

