require 'spec_helper'

describe "Cookies Bar", type: :feature, js: true do
  before do
    EuCookies.enabled = true
    visit homepages_path
    expect_cookie_bar
  end

  it "show cookies bar unless accepted" do
    visit homepages_path
    expect_cookie_bar
  end

  it "remove cookie bar on click" do
    click_button I18n.t('eu_cookies.ok')
    dont_expect_cookie_bar
  end

  it "remove cookie bar on scroll" do
    pending "TODO"
    EuCookies.use_scroll = true
    # scroll
    dont_expect_cookie_bar
  end

  it "does not show cookie bar if accepted" do
    click_button I18n.t('eu_cookies.ok')
    visit homepages_path
    dont_expect_cookie_bar
  end

  it "allow to disable cookie bar" do
    EuCookies.enabled = false
    visit homepages_path
    dont_expect_cookie_bar
  end

  it "link to policy page" do
    new_window = window_opened_by { click_link I18n.t('eu_cookies.learn_more') }
    within_window new_window do
      expect(page).to have_text "Necessary cookies"
    end
  end

  it "allow to disable policy page" do
    EuCookies.display_policy = false
    visit homepages_path
    expect(page).to_not have_text I18n.t('eu_cookies.learn_more')
  end

  it "allow to link an external page" do
    EuCookies.display_policy = "http://www.google.com/policies/privacy/"
    visit homepages_path
    new_window = window_opened_by { click_link I18n.t('eu_cookies.learn_more') }
    within_window new_window do
      expect(page).to have_text "Google Privacy Policy"
    end
  end
end

def expect_cookie_bar
  expect(page).to have_text I18n.t('eu_cookies.short_html')
end

def dont_expect_cookie_bar
  expect(page).to_not have_text I18n.t('eu_cookies.short_html')
end
