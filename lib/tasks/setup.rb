desc "Setup/installation script to run after the first clone"
task :setup do

  puts `bundle install`

  require_relative '../label_gen-free_ride'

  # Create new tables and add columns so
  # the database matches the application models
  DataMapper.auto_migrate!

end
