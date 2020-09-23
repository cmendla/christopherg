# set path to the application
app_dir = File.expand_path("../..", __FILE__)
app_path = File.expand_path(File.dirname(__FILE__) + '/..')
shared_dir = "#{app_dir}/shared"
working_directory app_dir
# require 'rvm'
# RVM.use_from_path! File.dirname(File.dirname(__FILE__))
# gem_path = ~/home/cgmadmin/.rvm/rubies/ruby-2.7.1/bin/ruby
# gem_home = ~/home/cgmadmin/.rvm/rubies
# Set unicorn options

shared_dir = "#{app_dir}/shared"
working_directory app_dir

# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Path for the Unicorn socket
listen "#{shared_dir}/sockets/unicorn.sock", :backlog => 64

# Set path for logging
stderr_path "#{shared_dir}/log/unicorn.stderr.log"
stdout_path "#{shared_dir}/log/unicorn.stdout.log"

# Set proccess id path
pid "#{shared_dir}/pids/unicorn.pid"
