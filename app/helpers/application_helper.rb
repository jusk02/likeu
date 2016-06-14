

module ApplicationHelper

	def embed(youtube_url)
    	youtube_id = youtube_url.split("=").last
    	content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  	end

  	require "base64"

  	 def original_url
  	 	 @hola=request.fullpath
       @encoded_url = request.fullpath.split("url=").last

       @encoded_url = Base64.decode64(@encoded_url)
      
       
      
  end

end

