module EuCookies
  class Engine < ::Rails::Engine
    initializer 'eu_cookies.config' do |app|
      EuCookies.enabled = true if EuCookies.enabled.nil?
      EuCookies.position ||= :bottom
      EuCookies.use_scroll ||= false
      EuCookies.display_policy = true if EuCookies.display_policy.nil?
    end
  end
end
