#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Karmaville::Application.load_tasks


task :update_karma_sum => :environment do
  User.where("karma_sum IS NULL").pluck(:id).each do |user_id|
    User.update(user_id, karma_sum: KarmaPoint.where("user_id = ?", user_id).sum(:value))
  end
end
