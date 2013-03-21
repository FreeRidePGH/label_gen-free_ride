#!/usr/bin/env ruby   

# Load the bundled environment
require 'rubygems'
require 'bundler/setup'

require 'label_gen'

$LOAD_PATH.unshift(File.dirname(__FILE__))

# Run necessary initializers
#Dir[File.join(File.dirname(__FILE__), "..", "/config/initializers/**/*.rb")].each {|f| require f}
require_relative('../config/initializers/label_gen')

puts LabelGen::Template.label(1)
