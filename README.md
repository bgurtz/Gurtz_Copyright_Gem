# GurtzCopyright

Creats copyrights for pages with <% copyright %> with current year, name and all rights reserved

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gurtz_copyright'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gurtz_copyright

## Usage
### Goes in the application_controller.rb
```ruby
before_action :set_copyright

def set_copyright
	@copyright = GurtzCopyright::Renderer.copyright 'Brian Gurtz', 'All rights reserved'
end
# and use the below on the pages to call it on the pages.
<%= @copyright %>
```
### Or you can add it to the application_helper.rb
```ruby
  def copyright_generator
    @copyright = GurtzCopyright::Renderer.copyright 'Brian Gurtz', 'All rights reserved'
  end
```
### and use this code in the pages you want it to show 
```ruby
<%= copyright_generator %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gurtz_copyright. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GurtzCopyright project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/gurtz_copyright/blob/master/CODE_OF_CONDUCT.md).
