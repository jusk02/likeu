

module ApplicationHelper

	def embed(youtube_url)
    	youtube_id = youtube_url.split("=").last
    	content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  	end

  	require "base64"
 
  	  def video_url
    	  @hola=request.fullpath
        @encoded_url = request.fullpath.split("p=")
        if @encoded_url.length>1 
          if @encoded_url[1] != nil
           @encoded_url[1] = Base64.decode64(@encoded_url[1])
          else
             @encoded_url[1] = "no presente"
          end 
          if @encoded_url[2] != nil
           @encoded_url[2] = Base64.decode64(@encoded_url[2])
          else
             @encoded_url[2] = "no presente"
          end 
          if @encoded_url[3] != nil
           @encoded_url[3] = Base64.decode64(@encoded_url[3])
          else
             @encoded_url[3] = "no presente"
          end 
          if @encoded_url[4] != nil
           @encoded_url[4] = Base64.decode64(@encoded_url[4])
          else
             @encoded_url[4] = "no presente"
          end 
          if @encoded_url[5] != nil
           @encoded_url[5] = Base64.decode64(@encoded_url[5])
          else
             @encoded_url[5] = "no presente"
          end 
          if @encoded_url[6] != nil
           @encoded_url[6] = Base64.decode64(@encoded_url[6])
          else
             @encoded_url[6] = "no presente"
          end 
         
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

