require_relative './spec_helper'
require 'pact/consumer/rspec'
require 'consumer/version'

Pact.configure do | config |
  config.doc_generator = :markdown
end

Pact.service_consumer 'Consumer' do
  has_pact_with "Provider" do
    mock_service :provider do
      port 1234
      pact_specification_version Consumer::VERSION
    end
  end
end

