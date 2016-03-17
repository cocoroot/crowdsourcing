# config valid only for current version of Capistrano
lock '3.4.0'

set :application, "crowdsourcing"
repo_url = "#{ENV['GIT_REPOSITORY_URL']}".gsub('https://', "https://#{ENV['GIT_HTTPS_USERNAME']}:#{ENV['GIT_HTTPS_PASSWORD']}@")
set :repo_url, repo_url

set :branch, 'release'

set :deploy_to, '/var/www/app'
set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
set :default_env, {
      rbenv_root: "~/.rbenv",
      path: "~/.rbenv/shims:~/.rbenv/bin:$PATH",
      "DATABASE_NAME" => ENV['DATABASE_NAME'],
      "DATABASE_HOST" => ENV['DATABASE_HOST'],
      "DATABASE_PORT" => ENV['DATABASE_PORT'],
      "DATABASE_USER" => ENV['DATABASE_USER'],
      "DATABASE_PASSWORD" => ENV['DATABASE_PASSWORD']
    }

set :rbenv_path, '~/.rbenv'

# Default value for keep_releases is 5
set :keep_releases, 1

after 'deploy:publishing', 'deploy:restart'
before 'deploy:starting', 'deploy:upload'
after 'deploy:finishing', 'deploy:cleanup'
namespace :deploy do

  set :unicorn_rack_env, "none"
  set :unicorn_config_path, "config/unicorn.rb"

  set :linked_dirs, (['tmp/pids'])

  desc 'Upload database.yml, secrets.yml'
  task :upload do
    on roles(:app) do |host|
      if test "[ ! -d #{shared_path}/config ]"
        execute "mkdir -p #{shared_path}/config"
      end
      upload!('config/database.yml', "#{shared_path}/config/database.yml")
      upload!('config/secrets.yml', "#{shared_path}/config/secrets.yml")
    end
  end
  
  task :restart do
    invoke 'unicorn:restart'
  end

  task :symlink do
    on_rollback { run "rm #{current_path}; ln -s #{previous_release} #{current_path}"}
    run "rm #{current_path}; ln -s #{release_path} #{current_path}"
  end
  
  # after :restart, :clear_cache do
  #   on roles(:web), in: :groups, limit: 3, wait: 10 do
  #     # Here we can do anything such as:
  #     # within release_path do
  #     #   execute :rake, 'cache:clear'
  #     # end
  #   end
  # end
  

end
