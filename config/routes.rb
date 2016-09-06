Rails.application.routes.draw do
  get "cookies-policy", to: "eu_cookies#policy",
                        as: :cookies_policy,
                        constraints: ->(_) {
                          EuCookies.enabled && EuCookies.display_policy == true
                        }
end
