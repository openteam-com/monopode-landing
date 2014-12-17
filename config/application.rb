require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module MonopodeLanding
  class Application < Rails::Application
    config.time_zone = 'Novosibirsk'

    config.i18n.default_locale = :ru

    config.assets.paths << "#{Rails.root}/app/assets/fonts"
  end
end
