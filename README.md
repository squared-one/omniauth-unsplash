# Omniauth - Unsplash

[![Gem Version](https://badge.fury.io/rb/omniauth-unsplash.svg)](https://badge.fury.io/rb/omniauth-unsplash)

This is an UNofficial OmniAuth strategy for authenticating to Unsplash. To
use it, you'll need to sign up for an OAuth2 Application ID and Application Secret
on the [Unsplash Applications Page](https://unsplash.com/oauth/applications). 
Please note that it is in alpha stage yet. It is used by the author but not covered 
by automatic tests.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-unsplash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-unsplash

## Usage

Plain usage without Rails:    

```ruby
use OmniAuth::Builder do
  provider :unsplash, 
           ENV['UNSPLASH_APPLICATION_ID'], 
           ENV['UNSPLASH_APPLICATION_SECRET'],
           scope: 'public read_user'
end
```
    
### Devise (Rails)

In your `Devise.setup` block (in `config/initializers/devise.rb`) do:

```ruby
config.omniauth :unsplash,
                ENV['UNSPLASH_APPLICATION_ID'],
                ENV['UNSPLASH_APPLICATION_SECRET'],
                # public is used if left blank
                # scopes are separated by space
                scope: 'public read_user',
                strategy_class: OmniAuth::Strategies::Unsplash
                
And don't forget to add something like

    YOUR_HOST/users/auth/unsplash/callback 

to your 'Callback URL' section in the Unsplash settings.
                
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for 

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/squared-one/omniauth-unsplash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Credits

Developed as a part of https://www.squared.one/art-prints effort!
