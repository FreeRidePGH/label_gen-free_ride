# Load the bundled environment
require 'rubygems'
require 'bundler/setup'

require 'label_gen'

# Run necessary initializers
Dir[File.join(File.dirname(__FILE__), "..", "/config/initializers/**/*.rb")].each {|f| require f}
