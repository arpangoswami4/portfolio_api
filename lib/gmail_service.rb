require 'googleauth'
require 'google/apis/gmail_v1'
require 'base64'
require 'stringio'

class GmailService

  def def initialize
    @service = Google::Apis::GmailV1::GmailService.new
    @service.authorization = authorize
  end

  def send_email(mail)
    message = create_message(mail)
    @service.send_user_message('me', message)
  end


  private

  def authorize
    json_key_io = StringIO.new(ENV['GOOGLE_CREDENTIALS'])
    authorizer = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: json_key_io,
      scope: SCOPE
    )
    authorizer.fetch_access_token!
    authorizer
  end

  def create_message(mail)
    encoded_mail = Base64.urlsafe_encode64(mail.encoded)
    Gmail::Message.new(raw: encoded_mail)
  end

end
