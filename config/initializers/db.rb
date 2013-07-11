# DataMapper configuration
require 'data_mapper'
require File.join(File.dirname(__FILE__), '..', 'database')

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, LabelGenFreeRide.data_mapper_config)

DataMapper.finalize

