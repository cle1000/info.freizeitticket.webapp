module Facebook
	def post(message, image)
		puts image
		uri = URI.parse("https://graph.facebook.com/v2.5/1720826231536880/feed")
		args = {
	      "message" => message,
	      "link" => "http://freizeitticket.info",
	      "access_token" => "#{$fb_access_token}"
		}
	    #"picture" => image,
	    uri.query = URI.encode_www_form(args)
	    http = Net::HTTP.new(uri.host, 443)
	    http.use_ssl = true
   	    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	    request = Net::HTTP::Post.new(uri.request_uri)  
	    http.request(request)
	end
end
