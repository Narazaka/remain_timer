$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "simplecov"
SimpleCov.start
require "minitest/autorun"
require "minitest/power_assert"
require "remain_timer"
