module EuCookiesHelper
  def must_accept_cookie?
    cookies['eu_cookies_consent'] != 'true' && EuCookies.enabled
  end

  def cookies_bar(params = {})
    if must_accept_cookie?
      render partial: 'eu_cookies/cookies_bar', locals: params
    end
  end

  def cookies_bar_data
    {
      position: EuCookies.position,
      use_scroll: EuCookies.use_scroll.to_s
    }
  end

  def display_cookies_policy?
    EuCookies.display_policy
  end

  def cookies_policy_link
    EuCookies.display_policy == true ? cookies_policy_path : EuCookies.display_policy
  end
end
