# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)
CONFIGURE_ARGS="with-pg-config=/Applications/Postgres.app/Contents/MacOS/bin/pg_‌​config"

set :app_file, __FILE__

run Sinatra::Application
