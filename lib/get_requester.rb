
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

 
# def program_school
# # we use the JSON library to parse the API response into nicely formatted JSON
#   programs = JSON.parse(self.get_programs)
#   programs.collect do |program|
#     program["agency"]  
#   end
# end


#string url
#get_response_body method that sends a GET request to the URL passed in on intialization return body of the response
#parse_json method using get_response_body to send a request, return a Ruby Array/Hash
    # def parse_json
    # uri = URI.parse(url)
    # response = Net::HTTP.get_response_body(uri)
    # response.body
  # end

end