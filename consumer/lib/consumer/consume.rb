require 'json'

module Consumer
  class Consume

    include HTTParty
    base_uri 'provider'

    def self.get_people
      response = get("/people", :headers => {'Accept' => 'application/json'})
      when_successful(response) do
        puts response
      end
      parse_body(response)
    end

    def self.when_successful response
      if response.success?
        yield
      elsif response.code == 404
        nil
      else
        raise response.body
      end
    end

    def self.parse_body response
      JSON.parse(response.body, {:symbolize_names => true})
    end
  end

end
