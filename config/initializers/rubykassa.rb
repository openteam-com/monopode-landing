# -*- encoding : utf-8 -*-
Rubykassa.configure do |config|
  config.login = Settings['robokassa.login']
  config.first_password = ENV["robokassa.secret1"]
  config.second_password = ENV["robokassa.secret2"]
  config.mode = :test # or :production
  config.http_method = :get # or :post
  config.xml_http_method = :get # or :post
  config.result_callback = ->(notification) { render text: notification.success }
end
