
class CashRegister
       
    attr_accessor :total,:discount, :products

    def initialize(discount =0)
        @products= []
        @discount  = discount
        @total = 0 
    end

    def total
        @total 
    end

    def add_item(title, price, quantity=1)
        quantity.times do
        @products << title
        end
        @last_transaction= @total
        @total +=price*quantity
    end

    def apply_discount
        @total-=@total*discount/100
          if @discount !=0
        "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @products
    end
    
    def void_last_transaction
        @total = @last_transaction
    
    end
end