require "rest-client"

class MailgunService

  def self.send_email(mail, reciever)
    api_key = ENV['MAILGUN_API_KEY']
    domain = ENV['MAILGUN_DOMAIN']
    data = { from: 'arpan.goswami21@gmail.com', to: reciever.email, subject: mail.subject, html: mail.body.encoded }
    response = RestClient.post("https://api.mailgun.net/v3/#{domain}/messages", data, { Authorization: "Basic " + Base64.strict_encode64("api:#{api_key}") })
  end

end
