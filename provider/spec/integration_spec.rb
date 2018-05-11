require 'spec_helper'
require 'provider/api'
require 'rack/test'

Pact.provider_states_for "Consumer" do
	include Rack::Test::Methods

  provider_state "there is a need for people" do
    no_op
  end

  provider_state "an error occurs retrieving people" do
  	set_up do
    	allow(Provider::Api).to receive(:people).and_raise("Argh!!!")
    end
  end

end
