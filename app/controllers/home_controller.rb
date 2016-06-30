class HomeController < ApplicationController
  
require 'net/http'

def index
		@contact = Contact.new
		@page_description = 'El mejor talento, en todo lugar y en todo momento. Soluciones de outsorcing.'
		@page_keywords    = 'LikeU, Like, Outsorcing, Contact, Center, likers, agentes, on, demand, inmediato, Soluciones'
		
	end

def facebook_likes
    uri = URI("http://graph.facebook.com/40796308305")
    data = Net::HTTP.get(uri)
    @likes = JSON.parse(data)['likes']
end
	  

end
