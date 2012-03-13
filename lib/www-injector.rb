require "www-injector/version"

class WwwInjector
  
  def initialize(app)
    @app = app
  end
  
  def call(env)
    if env['HTTP_HOST'] !~ /^www\./i
      [301, { 'Location' => Rack::Request.new(env).url.sub(/^(https?\:\/\/)/i) {|s| $1 + 'www.'} }, ['Redirecting with www...']]
    else
      @app.call(env)
    end
  end
  
end
