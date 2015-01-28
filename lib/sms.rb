class Sms
  def send(message)
    message = MainsmsApi::Message.new(sender: 'ZnaiGorod', message: message, recipients: [Settings['sms_recipient.phone']]) if Rails.env.production?

    message = MainsmsApi::Message.new(sender: 'ZnaiGorod', message: message, recipients: [Settings['sms_recipient.phone']], test: 1) if Rails.env.development?

    message.deliver
  end
end
