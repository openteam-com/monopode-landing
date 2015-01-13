# -*- encoding : utf-8 -*-
Rubykassa.configure do |config|
  config.login = Settings['robokassa.login']
  config.first_password = Settings['robokassa.secret_1']
  config.second_password = Settings['robokassa.secret_2']
  config.mode = :test # or :production
  config.http_method = :get # or :post
  config.xml_http_method = :get # or :post
  config.result_callback = ->(notification) { render text: notification.success } # robokassa/paid
  config.success_callback = ->(notification) { redirect_to root_path, flash: { notice: 'Оплата прошла успешно' } } # robokassa/success
  #config.fail_callback = ->(notification) { render text: 'idite nahuy' } # robokassa/fail
end
