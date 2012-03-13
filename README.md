# www-injector

This Rack middleware forces using of www. Whenever application is called without the www, this middleware forces it by redirecting with HTTP 301 code - Moved permanently to it's www version.

`example.com?param=value => www.example.com?param=value`

## Installation

Insert this line into your `Gemfile` file:

```ruby
gem 'www-injector', :git => 'git://github.com/SmartMedia/www-injector.git'
```

### Rails 3.x

If you want to use this middleware in every environment, insert this line into `config/application.rb`, otherwise insert it in `config/environments/<environment>.rb` 

```ruby
config.middleware.use WwwInjector
```