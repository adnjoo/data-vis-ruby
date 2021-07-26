steps:

```
rails new app --database=postgresql
cd app
bundle install
rake db:create
rails s
```

copy routes.rb into config/routes.rb

`rails g controller home index` creates home, index pages

`rake assets:precompile`

`rails s -e production`
should be working

paste in home_controller.rb

create crud scaffold
`rails g scaffold people f_name:string m_name:string l_name:string prefix:string address1:string address2:string city:string state:string zipcode:integer education:string estimated_income:string`

push migration into database
`rails db:migrate`

delete scaffolds.scss (conflicting styles)

include `gem 'chartkick'` in Gemfile, then `bundle i`

copy application.html.erb over

copy header partial over

copy seeds.rb over, copy .csv files over

run the command: `rake db:seed` to seed the DB.

followed instructions on https://chartkick.com/

site loads on development (`rails s`)

`rake db:migrate RAILS_ENV=production`
`rake db:seed RAILS_ENV=production`

prod server not loading application.js

trying to install webpack

```
rm -rf node_modules
rails assets:clobber
yarn
rails assets:precompile
```
`rails s`, and `rails s -e production` should work

`bundle lock --add-platform x86_64-linux`

debug
`bundle exec rake secret`

config.secret_key_base = 'YourSecretKeyHere' in my production.rb located at config/environments