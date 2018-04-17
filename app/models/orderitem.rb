class Orderitem < ApplicationRecord
    belongs_to :order, optional: true
    belongs_to :product, optional: true
    belongs_to :cart
    
    def subtotal
        product.vatprice*quantity
    end
end
