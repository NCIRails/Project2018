module Usercart
    private
    def set_cart
       
        @cart = Cart.find_by_id(session[:cart_id])
        if @cart==nil
        @cart=Cart.create
        @cart.save
        session[:cartid]=@cart.id
        end
    end
end


 # private
   # def set_cart
        #if session[:cart_id] == nil
        #    @cart = Cart.new
        # @cart.save
        # session[:cartid]=@cart.id
       # else
    
       # @cart = Cart.find(session[:cart_id])
        #rescue ActiveRecord::RecordNotFound
       # @cart=Cart.create
       # session[:cartid]=@cart.id
       # end
  #  end