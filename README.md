# Opengraphaul[![Build Status](https://travis-ci.org/therealedsheenan/opengraphaul.svg?branch=master)](https://travis-ci.org/therealedsheenan/opengraphaul)
Simple library for parsing Open Graph protocol information from web sites.

## Under the hood
This is gem is dependent to Nokogiri.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'opengraphaul'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install opengraphaul
    

## How to

```
ogs = Opengraphaul::Base.new(YOUR_URL)
```
This method returns an object, You can access open graph objects by:
```
ogs.og_image
ogs.og_title
ogs.og_type
ogs.og_url
```

Additional Open graph data:
```
og_audio
og_description
og_determiner
og_local
og_local_alternate
og_site_name
og_video
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[therealedsheenan]/opengraphaul. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


