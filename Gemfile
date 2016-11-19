source 'https://rubygems.org'

ruby '2.3.1'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-turbolinks', '2.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :rub
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.6.0'
# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'mysql2',     '0.4.5'
  gem 'rspec-rails', '~> 3.5.0'
  gem 'pry-byebug', '~> 3.4.0'
  gem 'rubocop', '~> 0.40.0', require: false
  gem 'factory_girl_rails', '~> 4.7.0'
  gem 'annotate', '~>2.7.1'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg',             '0.19.0'
  gem 'rails_12factor', '0.0.3'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
