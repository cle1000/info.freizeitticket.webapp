module Email
    def email (text)
        mg_client = Mailgun::Client.new(ENV['FREIZEITTICKET_MAILGUN'])

        message_params =  {
                           from: 'powder_bot@freizeitticket.info',
                           to:   'mailer@freizeitticket.info',
                           subject: 'Powderalarm',
                           text:    text
                          }

        result = mg_client.send_message('freizeitticket.info', message_params).to_h!
    end
end