desc "Setup/installation script to run after the first clone"
task :setup do

  puts `bundle install`

  require File.join(File.dirname(__FILE__), "..", "..", "config", "directories")

  # Database config file
  if !File.exists?(APP_DB_CONFIG_FILE)
    puts `cp config/database.rb.sample config/database.rb`
    puts "Database config file created"
  end
end

namespace :db do
  desc "create new tables and add columns so the database matches the application models"

  task :upgrade do
    require File.join(File.dirname(__FILE__), "..", "..", "config", "directories")
  if File.exists?(APP_DB_CONFIG_FILE)
      require File.join(File.dirname(__FILE__), "..", "label_gen-free_ride")
      DataMapper.auto_upgrade!
    else
      puts "Database config file not found. Please run setup"
    end
  end

  desc "Drop existing tables and create new tables and add columns so the database matches the application models"
  task :migrate do
    require File.join(File.dirname(__FILE__), "..", "..", "config", "directories")
    if File.exists?(APP_DB_CONFIG_FILE)
      require File.join(File.dirname(__FILE__), "..", "label_gen-free_ride")
      DataMapper.auto_migrate!
    else
      puts "Database config file not found. Please run setup"
    end
  end
end
