# Persistent::StorageRAM

[![Gem Version](https://badge.fury.io/rb/persistent-cache-storage-ram.png)](https://badge.fury.io/rb/persistent-cache-storage-ram)
[![Build Status](https://travis-ci.org/evangraan/persistent-cache-storage-ram.svg?branch=master)](https://travis-ci.org/evangraan/persistent-cache-storage-ram)
[![Coverage Status](https://coveralls.io/repos/github/evangraan/persistent-cache-storage-ram/badge.svg?branch=master)](https://coveralls.io/github/evangraan/persistent-cache-storage-ram?branch=master)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/08eedbc4456b49f990802d3730667aa8)](https://www.codacy.com/app/ernst-van-graan/persistent-cache-storage-ram?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=evangraan/persistent-cache-storage-ram&amp;utm_campaign=Badge_Grade)

This gem provides a RAM storage back-end to Persistent::Cache. Please see https://rubygems.org/gems/persistent-cache.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'persistent-cache-storage-ram'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install persistent-cache-storage-ram

## Usage

Updates to the cache are stored in RAM using a hash.

Tell Persistent::Cache to use this provider so:

    require 'persistent-cache/storage_ram'
    require 'persistent-cache'

    freshness = nil # forever or freshness in seconds
    cache = Persistent::Cache.new("cache-name", freshness, Persistent::Cache::STORAGE_RAM)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/evangraan/persistent-cache-storage-ram. This gem was sponsored by Hetzner (Pty) Ltd - http://hetzner.co.za

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

