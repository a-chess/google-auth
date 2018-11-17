# config valid only for Capistrano 3.1
lock '3.11.0'

set :application, 'google-auth'
set :repo_url, 'git@github.com:a-chess/google-auth.git'
set :branch, 'master'
set :deploy_to, '/home/hyuga/google-auth'
set :log_level, :debug
set :pty, true
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets bundle public/system public/assets}
set :default_env, { path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH" }
set :keep_releases, 5

append :linked_files, 'config/database.yml', 'config/master.key'

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do

  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end

