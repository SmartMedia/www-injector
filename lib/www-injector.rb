require "www-injector/version"

class WwwInjector
  
  def initialize(app)
    @app = app
  end
  
  def call(env)
    if env['HTTP_HOST'] !~ /^https?\:\/\/www\./i
      Rails.logger.info "\n\n -- WWW-INJECTOR REDIRECTING FROM " + env['HTTP_HOST'] + " TO " + Rack::Request.new(env).url.sub(/^(https?\:\/\/)/i) {|s| $1 + 'www.'}
    else
      Rails.logger.info "\n\n -- WWW-INJECTOR NOT REDIRECTING FROM " + env['HTTP_HOST']
    end
      
      # [301, { 'Location' => Rack::Request.new(env).url.sub(/^(https?\:\/\/)/i) {|s| $1 + 'www.'} }, ['Redirecting with www...']]
    # else
      @app.call(env)
    # end
  end
  
end

