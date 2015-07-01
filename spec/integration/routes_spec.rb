require 'spec_helper'

describe "Routes", type: :routing do
  before do
    EuCookies.enabled = true
    EuCookies.display_policy = true
  end

  it "add policy route" do
    expect(get: "cookies-policy").to be_routable
  end

  it "don't add policy route if not needed" do
    EuCookies.enabled = false
    expect(get: "cookies-policy").not_to be_routable

    EuCookies.enabled = true
    EuCookies.display_policy = false
    expect(get: "cookies-policy").not_to be_routable

    EuCookies.enabled = true
    EuCookies.display_policy = "http://www.google.com/policies/privacy/"
    expect(get: "cookies-policy").not_to be_routable
  end
end
