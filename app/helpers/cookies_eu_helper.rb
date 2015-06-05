module CookiesEuHelper
  def must_accept_cookie?
    cookies['cookie_eu_consented'] != 'true' && CookiesEu.enabled
  end

  def cookies_bar(params = {})
    if must_accept_cookie?
      render partial: 'cookies_eu/cookies_bar', locals: params
    end
  end
end
