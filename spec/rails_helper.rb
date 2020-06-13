require 'capybara/rspec'
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

RSpec.configure do |config|
  # 省略
  # Setup to run system spec
  config.before(:each, type: :system) do
    driven_by :selenium_chrome
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome
  end
end
