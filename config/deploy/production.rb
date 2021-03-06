set :rails_env, "production"
set :unicorn_rack_env, "production"

role :app, %w{hyuga@160.16.131.221}
role :web, %w{hyuga@160.16.131.221}
role :db,  %w{hyuga@160.16.131.221}

server '160.16.131.221', user: 'hyuga', roles: %w{web app}, ssh_options: { keys: %w(~/.ssh/id_rsa_sakura) }
