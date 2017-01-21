# Omniauth::Unsplash

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/omniauth/unsplash`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

    use OmniAuth::Builder do
      provider :unsplash, 
               ENV['UNSPLASH_APPLICATION_ID'], 
               ENV['GITHUB_APPLICATION_SECRET'],
               scope: 'public read_user'
    end
    
### Rails / Devise    

In your `Devise.setup` block (in `config/initializers/devise.rb`) do:

    config.omniauth :unsplash,
                    ENV['UNSPLASH_APPLICATION_ID'],
                    ENV['UNSPLASH_APPLICATION_SECRET'],
                    scope: 'public read_user',
                    strategy_class: OmniAuth::Strategies::Unsplash

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/squared-one/omniauth-unsplash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

