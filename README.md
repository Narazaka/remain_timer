# RemainTimer

A small tool for estimating and displaying the remaining time of batch jobs/tasks

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'remain_timer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install remain_timer

## Usage

```ruby
remain_timer = RemainTimer.new
remain_timer.all_count = all_users.count
remain_timer.start

all_users.find_in_batches do |users|
  remain_timer.remain_time.puts(prefix: "[fetching users]")
  # [fetching users] past: 20:34 / remain: 55:33 / all: 1:16:07 || past: 24000 / remain: 12000 / all: 36000
  ... # main process
  remain_timer.progress(users.size)
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/remain_timer.

