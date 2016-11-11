module Pushbot

  def notify_all(message)
    @toSend = {
        "msg" => message,
        "platform" => [0,1],
        "sound" => ''
    }.to_json

    puts $pushbots_app_id
    puts $pushbots_secret

    uri = URI.parse("https://api.pushbots.com/push/all")
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true
    https.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Post.new(uri.path, initheader = {'Content-Type' => 'application/json'})
    
    request['x-pushbots-appid'] = $pushbots_app_id
    request['x-pushbots-secret'] = $pushbots_secret

    request.body = @toSend
    res = https.request(request)

    puts "Response #{res.code} #{res.message}: #{res.body}"

  end
end