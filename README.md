# EuCookies

A Rails solution to the European Cookie Law issue.

This will add a dismissable "cookies bar" and an optional link to a policy page.

[![Build Status](https://travis-ci.org/freego/eu_cookies.svg)](https://travis-ci.org/freego/eu_cookies)
[![Code Climate](https://codeclimate.com/github/freego/eu_cookies/badges/gpa.svg)](https://codeclimate.com/github/freego/eu_cookies)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eu_cookies', "~> 1.1.0"
```

And then execute:

    $ bundle

Run the installation generator:

    $ bundle exec rails g eu_cookies:install

Then, just add this somewhere on you `<body>`:

```erb
<%= cookies_bar %>
```

NOTE: This gem imply that you have JQuery.

## Configuration

On a initializer you can configure some things (defaults are shown here):

```ruby
# false to remove the default internal link, a string to link an external page
EuCookies.display_policy = true
# true to treat page scroll as acceptance
EuCookies.use_scroll = false
# false to disable all the features
EuCookies.enabled = true
```

## Styling

To quickly customize position and styles you can override some Sass variables,
take a look to your `app/assets/stylesheets/eu_cookies.scss` file.

## Supported languages

The cookies bar message is available in English, Croatian, Dutch, Estonian,
French, German, Italian, Norwegian, Polish, Russian, Slovenian, Spanish and Swedish.

The full policy page is currently in english.

## Turbolinks

Not supported, please use [jquery.turbolinks gem](https://github.com/kossnocorp/jquery.turbolinks).

## Contributing

Bug reports and pull requests are welcome. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to the
[Contributor Covenant](contributor-covenant.org) code of conduct.

## Credits

Originally based on https://github.com/infinum/cookies_eu

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
