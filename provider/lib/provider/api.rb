require 'sinatra/base'
require 'json'

module Provider

  class Api < Sinatra::Base

    set :raise_errors, false
    set :show_exceptions, false

    def self.people
      %w{ Matt Cara Eugene }
    end

    error do
      e = env['sinatra.error']
      content_type :json, :charset => 'utf-8'
      status 500
      { error: e.message, backtrace: e.backtrace }.to_json
    end

    get '/people' do
      content_type :json, :charset => 'utf-8'
    	{ people: Provider::Api.people }.to_json
    end

  end
end
