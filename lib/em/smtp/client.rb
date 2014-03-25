require 'eventmachine'

module Em
  module Smtp
    class Client
      def initialize(values)
        self.settings = {
          host:     'localhost',
          port:     25,   # optional, defaults 25
          starttls: true, # use ssl
          domain:   'localhost.localdomain',
          #auth:     {
          #            type:     nil, # :plain
          #            username: nil, # 'username'
          #            password: nil  # 'password'
          #          }
        }.merge!(values)
      end

      attr_accessor :settings

      def deliver!(mail)
        email = EM::Protocols::SmtpClient.send(settings.merge!({
          to:       mail[:to].formatted,
          from:     mail[:from].addresses[0],
          content:  "#{mail.encoded}\r\n.\r\n"
        }))
        # Ignore callbacks now XD
        #email.callback{
        #}
        #email.errback{ |e|
        #}
      end
    end
  end
end
