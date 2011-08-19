require 'rubygems'

require File.dirname(__FILE__) + "/../lib/reaper"

# Custom Matchers
#Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

Spec::Runner.configure do |config|
 
  config.mock_with :mocha

	# config :before_suite, :before_each, :after_each
end
