# config valid only for current version of Capistrano
lock '3.8.0'

set :application, 'GW2Oracle'
set :repo_url, 'https://github.com/Eearslya/GW2Oracle.git'
set :rails_env, 'production'
set :branch, 'master'
set :deploy_to, '/var/www/gw2oracle'
set :keep_releases, 5
set :use_sudo, false
set :conditionally_migrate, true
set :passenger_restart_with_touch, false
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system'
append :linked_files, '.env'
