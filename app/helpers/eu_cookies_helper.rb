module EuCookiesHelper
  def must_accept_cookie?
    cookies['eu_cookies_consent'] != 'true' && EuCookies.enabled
  end

  def cookies_bar(params = {})
    if must_accept_cookie?
      render partial: 'eu_cookies/cookies_bar', locals: params
    end
  end
end
