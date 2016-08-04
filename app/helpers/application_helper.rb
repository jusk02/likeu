

module ApplicationHelper

	def embed(youtube_url)
    	youtube_id = youtube_url.split("=").last
    	content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  	end

  	require "base64"
 
  	  def video_url
    	  @hola=request.fullpath
        @encoded_url = request.fullpath.split("par=")
        if @encoded_url.length>1  
          @encoded_url = Base64.decode64(@encoded_url)
          @encoded_url
        else
          @hola  
        end  
      end

      def ciudad
        @ciudad = request.location.country

        @ciudad
        
      end



end

