require 'pact/provider/rspec'

require "./spec/integration_spec"

Pact.service_provider 'Provider' do

  honours_pact_with "Consumer" do
    pact_uri 'http://pactbroker.dmuso.com/pacts/provider/Provider/consumer/Consumer/latest'
  end

end

