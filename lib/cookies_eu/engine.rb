module CookiesEu
  class Engine < ::Rails::Engine
    initializer 'cookies_eu.environment' do |app|
      CookiesEu.enabled = true if CookiesEu.enabled.nil?
      CookiesEu.position ||= :bottom
    end
  end
end