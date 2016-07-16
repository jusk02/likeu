class HomeController < ApplicationController
  
require 'net/http'

def index
		@contact = Contact.new
		@page_title       = 'LikeU: Servicios BPO'
		@page_description = 'El primer servicio al cliente que no es un contact center, Telemarketing, Servicio al cliente, Ventas, Soporte técnico, Outsorcing, Bilingüe, Global BPO.'
		@page_keywords    = 'LikeU, Like, Outsorcing, Contact, Center, likers, agentes, on, demand, inmediato, Soluciones, contact center, outsorcing, BPO, ventas, soporte tecnico'
		
	end

def facebook_likes
    uri = URI("http://graph.facebook.com/40796308305")
    data = Net::HTTP.get(uri)
    @likes = JSON.parse(data)['likes']
end
	  

end
