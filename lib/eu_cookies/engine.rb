module EuCookies
  class Engine < ::Rails::Engine
    initializer 'eu_cookies.environment' do |app|
      EuCookies.enabled = true if EuCookies.enabled.nil?
      EuCookies.position ||= :bottom
      EuCookies.use_scroll ||= false
    end
  end
end
