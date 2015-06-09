# EuCookies

A Rails solution to the European Cookie Law issue.

This will add a dismissable "cookies bar" and a `/cookies-policy` page with the
long cookies policy text.

[![Build Status](https://travis-ci.org/freego/eu_cookies.svg)](https://travis-ci.org/freego/eu_cookies)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eu_cookies', "~> 1.0"
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

On a initializer you can configure things (defaults are shown here):

```ruby
EuCookies.position = :bottom # or :top
EuCookies.use_scroll = false # true to treat page scroll as acceptance
EuCookies.display_policy = true # false to not link long policy page
EuCookies.enabled = true # false to disable all the features
```

## Styling

To quickly customize the style you can override [Sass variables](https://github.com/freego/eu_cookies/blob/master/app/assets/stylesheets/eu_cookies/_variables.scss)
on your `app/assets/stylesheets/eu_cookies.scss` file.

## Supported languages

The short cookies bar message is available in English, German, Spanish, French,
Croatian, Italian, Slovenian, Dutch, Estonian, Norwegian, Russian and Swedish.

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
