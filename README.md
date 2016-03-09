# ChicagoLibraryIndex

Allows user to access City of Chicago public API from ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chicago_library_index'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chicago_library_index

## Usage

To get all of the City of Chicago Library locations, run this code:

```ruby
libraries = ChicagoLibraryIndex::Library.all
```

To get all of the City of Chicago Library locations with a search keyword, run this code:

```ruby
libraries = ChicagoLibraryIndex::Library.search('austin')
```
Replace 'austin' with your own search keyword.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chicago_library_index.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

