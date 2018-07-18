require 'faraday'
require 'json'

class HttpAdaptor
  def initialize
    @conn = Faraday.new(:url => 'https://peaceful-spire-61539.herokuapp.com/api/v1/') do |faraday|
      faraday.request  :url_encoded
      faraday.adapter  Faraday.default_adapter
    end
  end

  def load
    response = @conn.get('toppings')
    JSON.parse(response.body, symbolize_names: true)
  end
end
