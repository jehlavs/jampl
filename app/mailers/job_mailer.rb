class JobMailer < ApplicationMailer

  default to: 'Prace@jampl.cz'

  def job_mail
    @order = Order.new(params)
    @name, @mail, @phone, @detail = @order.name, @order.mail, @order.phone, @order.detail
    mail(from: @order.mail, subject: 'Nový mail z kontaktního formuláře')
  end

end
