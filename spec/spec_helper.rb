require 'rubygems'
require 'spork'
require 'capybara/rspec'

ENV["RAILS_ENV"] ||= 'test'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However, 
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'views/inherited_resource_helpers'
  # in spec/support/ and its subdirectories.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
end

Spork.each_run do
  Menantang::Application.reload_routes!
end

Spork.each_run do
  FactoryGirl.factories.clear
  load 'spec/factories.rb'
end

RSpec.configure do |config|

  # == Mock Framework
  config.mock_with :rspec

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true
  config.use_transactional_examples = true

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
end