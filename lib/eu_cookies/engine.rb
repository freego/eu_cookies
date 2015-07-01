module EuCookies
  class Engine < ::Rails::Engine
    initializer 'eu_cookies.config' do |app|
      # defaults
      EuCookies.enabled = true if EuCookies.enabled.nil?
      EuCookies.use_scroll ||= false
      EuCookies.display_policy = true if EuCookies.display_policy.nil?
    end
  end
end
