require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'
require 'cpf_faker'
require 'ruby-plsql'
#require 'oci8'
require 'json'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 20

Capybara.app_host = "https://sgv-dev.redetendencia.com.br/sgv"
