class OrderMailer < ApplicationMailer

  def order_mail
    @order = Order.new(params)
    @name, @mail, @phone, @detail = @order.name, @order.mail, @order.phone, @order.detail
    mail(from: @order.mail, to: 'contact@jampl.cz', subject: 'Nový mail z kontaktního formuláře')
  end

end
