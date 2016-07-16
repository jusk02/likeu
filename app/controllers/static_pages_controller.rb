class StaticPagesController < ApplicationController

	def soyliker
		@click = Click.new
    @page_title       = 'Trabaja en LikeU'

  	end

  	def FAQ
  		
  	end

  	def FAQ_likeu
  		
  	end

    def status
      unless current_user
        redirect_to new_user_session_path
      end
       @page_title       = 'Estado del proceso'
    end

    def dictiontest
      @user = User.new
      @users = User.order("created_at DESC")  
    end

  	def ups
  		@click = Click.new
  		@clicks = Click.order("created_at DESC")	
  	end

    def formulariomovil
      @user = User.new
    end

  	

end
