require_relative 'pact_helper'
require 'consumer/consume'

module Consumer
  describe Consume, :pact => true do

    before do
      Consume.base_uri provider.mock_service_base_url
    end

    describe ".get people" do
      context "when people are found" do

        before do
          provider.given("there is a need for people").
            upon_receiving("a request for people").with(
              method: :get,
              path: '/people',
              headers: {'Accept' => 'application/json'} ).
            will_respond_with(
              status: 200,
              headers: {'Content-Type' => 'application/json;charset=utf-8'},
              body: { "people" => ["Matt", "Cara", "Eugene"] }
            )
        end

        it "returns people" do
          expect(Consume.get_people).to eq ({ people: ["Matt", "Cara", "Eugene"] })
        end

      end

      context "when an error occurs retrieving people" do

        before do
          provider.given("an error occurs retrieving people").
            upon_receiving("a request for people").with(
              method: :get,
              path: '/people',
              headers: {'Accept' => 'application/json'}).
            will_respond_with(
              status: 500,
              headers: { 'Content-Type' => 'application/json;charset=utf-8'},
              body: {error: 'Argh!!!'})
        end

        it "raises an error" do
          expect{ Consume.get_people }.to raise_error /Argh/
        end

      end
    end
  end
end