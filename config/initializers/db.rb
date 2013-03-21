# DataMapper configuration
require 'data_mapper'

# DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default,{
                   :adapter => 'sqlite3',
                   :database => 'db/bike_label.db',
                   :username => nil,
                   :password => nil,
                   :host => nil
                 })


DataMapper.finalize

