class JobMailer < ApplicationMailer

  default to: 'Prace@jampl.cz'

  def job_mail
    @order = Order.new(params)
    @name, @mail, @phone, @detail = @order.name, @order.mail, @order.phone, @order.detail
    mail(from: @order.mail, subject: 'Nový mail z formuláře žádost o práci')
  end

  def cv_mail
    path = params[:file_path]
    attachments[File.basename(path)] = File.open(path).read
    File.unlink(path)
    mail(from: 'noreply@jampl.cz', subject: 'Nový životopis')
  end

end
