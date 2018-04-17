def process_payment
    customer = Stripe::Customer.create email: email,
                                       card: card_token

    Stripe::Charge.create customer: customer.id,
                          amount: order.price * 100,
                          description: order.name,
                          currency: 'euro'

  end