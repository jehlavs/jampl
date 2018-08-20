class OrdersController <  ApplicationController

  def create
    @order = Order.new(order_params)
    OrderMailer.with(@order.to_h.stringify_keys).order_mail.deliver_later
    respond_to do |format|
      format.html{ redirect_to root_path, notice: t('notice_mail_sent') }
      format.js
    end
  end

  private

    def order_params
      params.require(:order).permit(:name, :mail, :phone, :detail)
    end

end
