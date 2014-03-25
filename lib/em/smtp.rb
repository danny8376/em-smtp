require "action_mailer"
require "em/smtp/client"
require "em/smtp/version"

ActionMailer::Base.add_delivery_method :em_smtp, Em::Smtp::Client
