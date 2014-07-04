# -*- encoding : utf-8 -*-
ruby '1.9.3'

source "http://ruby.taobao.org"
source 'https://rails-assets.org'

gem 'rails', '3.2.15'
gem 'jquery-rails'
gem 'mysql2'
gem 'sqlite3'

#rabl 
gem 'rabl'
gem 'oj'

#grape
gem 'grape'
gem 'grape-rabl'

#divise
gem 'devise'
gem 'devise-encryptable' 

#will_paginate
gem "will_paginate", '~> 3.0'

#carrierwave
gem 'carrierwave'
gem 'mini_magick'
gem 'mime-types'


gem "geocoder"
gem 'capistrano', '~> 2.15.5'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem "less-rails"
  gem 'rails-assets-bootstrap'
end

group :development, :test do
  #gem 'sqlite3'
  gem "debugger"
  gem 'pry'
  gem 'pry-rails'
  gem 'thin'
  #gem 'rspec'
  #gem 'shoulda'
  #gem 'mocha'
end

group :production do
  gem 'unicorn'
end


