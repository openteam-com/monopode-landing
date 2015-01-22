# -*- encoding : utf-8 -*-
Rubykassa.configure do |config|
  config.login = Settings['robokassa.login']
  config.first_password = Settings['robokassa.secret_1']
  config.second_password = Settings['robokassa.secret_2']
  config.mode = :test # or :production
  config.http_method = :get # or :post
  config.xml_http_method = :get # or :post
  config.result_callback = ->(notification) { render text: notification.success }
  config.success_callback = ->(notification) {
    Order.find(params[:InvId]).update_attribute(:payment_status, "Оплачено")
    ValueStorage.find(1).increment!(:value,1)
    redirect_to root_path, flash: { notice: 'Оплата прошла успешно' }
  }
  config.fail_callback = ->(notification) {
    Order.find(params[:InvId]).update_attribute(:payment_status, "Не оплачено")
    redirect_to root_path, flash: { alert: 'При оплате возникли проблемы' }
  }
end
