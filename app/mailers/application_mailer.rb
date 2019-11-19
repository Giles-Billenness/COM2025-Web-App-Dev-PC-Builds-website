class ApplicationMailer < ActionMailer::Base
  #pretending to send mail as we dont have an smtp server
  default to: "info@pcbuilds.com", from: "info@pcbuilds.com"
  layout 'mailer'
end
