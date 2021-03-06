require "action_mailer"

ActionMailer:: Base.view_paths= File.dirname(__FILE__)
ActionMailer:: Base.smtp_settings = {
  address:          "smtp.gmail.com",
  port:             "587",
  user_name:        ENV['EMAIL_USERNAME'],
  password:         ENV['EMAIL_PASSWORD'],
  authentication: :plain
}

class Newsletter < ActionMailer::Base
  default from: "bonny.flores11@gmail.com"

  def welcome(recipient)
    @recipient = recipient
    mail(to: recipient,
         subject: "Thank You For Your Request ")
  end
end
