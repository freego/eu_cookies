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
      use_scroll: EuCookies.use_scroll.to_s
    }
  end

  def display_cookies_policy?
    EuCookies.display_policy
  end

  def cookies_policy_link
    if EuCookies.display_policy == true
      main_app.cookies_policy_path
    else
      EuCookies.display_policy
    end
  end
end
