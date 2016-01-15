require 'active_record'
require 'yaml'

dbconfig = YAML.load_file './database.yml'
ActiveRecord::Base.establish_connection(dbconfig)

class Commander < ActiveRecord::Base
end
