class HomeController < ApplicationController
  
require 'net/http'

def index
		@contact = Contact.new
	end

def facebook_likes
    uri = URI("http://graph.facebook.com/40796308305")
    data = Net::HTTP.get(uri)
    @likes = JSON.parse(data)['likes']
end
	  

end
