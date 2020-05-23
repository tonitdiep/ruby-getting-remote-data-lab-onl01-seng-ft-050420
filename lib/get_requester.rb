
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

def parse_json
  response = JSON.parse(self.get_response_body)
  # programs.collect do |response|
  #   response["agency"]
  # end
end
 
# def parse_json
# 
#   programs = JSON.parse(self.get_programs)
#   programs.collect do |program|
#     program["agency"]  
#   end
# end


#string url
#get_response_body method that sends a GET request to the URL passed in on intialization return body of the response
#parse_json method using get_response_body to send a request, return a Ruby Array/Hash


end