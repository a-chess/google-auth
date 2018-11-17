require 'capistrano/setup'

# bundle exec cap staging deploy:checkで怒られたので追加
# 将来のcapistranoとの互換性を確実にするにはこうする必要あり。
require "capistrano/deploy"
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

# rbenvを使用している場合
require 'capistrano/rbenv'

# デプロイ先のサーバで、ユーザディレクトリでrbenvをインストールしている場合
set :rbenv_type, :user
set :rbenv_ruby, '2.5.1'

require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano3/unicorn'

# Rails4から分離したsecrets.ymlの環境変数を .envファイルで管理する
# set :linked_files, %w{config/secrets.yml .env}

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
