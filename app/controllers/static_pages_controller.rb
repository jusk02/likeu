class StaticPagesController < ApplicationController

	def soyliker
		@click = Click.new

  	end

  	def FAQ
  		
  	end

  	def FAQ_likeu
  		
  	end

  	def ups
  		@click = Click.new
  		@clicks = Click.order("created_at DESC")	
  	end

  	

end
