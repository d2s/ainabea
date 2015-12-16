# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks



# Quality is a tool that runs quality checks on your code using community tools,
# and makes sure your numbers don't get any worse over time.
# Just add 'rake quality' as part of your Continuous Integration.
# https://github.com/apiology/quality#how-to-use
require 'quality/rake/task'
Quality::Rake::Task.new
