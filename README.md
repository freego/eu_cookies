# EuCookies

A complete Rails solution to the European Cookie Law issue.

## Supported languages

English, German, Spanish, French, Croatian, Italian, Slovenian, Dutch

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eu_cookies', "~> 1.0"
```

And then execute:

    $ bundle

Run the installation generator:

    $ bundle exec rails g eu_cookies:install

NOTE: This gem imply that you have a working JQuery installation.

## Usage

In your layout add

```erb
<%= cookies_bar %>
```

You can add a link parameter to link to your cookies explanation page (you have to create the page and controller for this)

```erb
<%= cookies_bar link: '/cookies' %>
```

If you wish to customize the style of the div the classes are:

```javascript
.eu_cookies           // main div
.eu_cookies_ok        // button
.eu_cookies_link      // link
```

## Configuration

On a initializer you can configure some things (defaults are shown here):

```ruby
EuCookies.position = :bottom # or :top
EuCookies.enabled = true # false to disable all the things
```

## Turbolinks is NOT supported

Please use [jquery.turbolinks gem](https://github.com/kossnocorp/jquery.turbolinks)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/freego/eu_cookies. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## Credits

Originally based on https://github.com/infinum/cookies_eu

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
