require 'simplecov'
require 'simplecov-console'
require 'rspec'
require 'pry'
require 'timecop'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  [SimpleCov::Formatter::Console]
)
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
  end
end
