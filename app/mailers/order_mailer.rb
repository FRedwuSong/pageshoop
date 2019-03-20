class OrderMailer < ApplicationMailer
  def talk_to_user(order)
    @order = order
    mail to:@order.email, subject: "成功訂購"
  end
end
