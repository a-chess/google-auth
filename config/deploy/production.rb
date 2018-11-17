set :rails_env, "staging"
set :unicorn_rack_env, "staging"

role :app, %w{user@example.com}
role :web, %w{user@example.com}
role :db,  %w{user@example.com}

server 'example.com', user: 'user', roles: %w{web app}

set :ssh_options, {
  keys: %w(/home/hyuga/.ssh/id_rsa),
  forward_agent: false,
  auth_methods: %w(publickey)
}