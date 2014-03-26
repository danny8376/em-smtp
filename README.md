# Em::Smtp

EM-SMTP is a very simple asynchronous delivery implementation for ActionMailer
that wraps EventMachine's SMTP Client.

It's extreme lightweight, and suitable for sites that don't need heavy mail
delivery and don't want to run another separate process.

## Installation

Add this line to your application's Gemfile:

    gem 'em-smtp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install em-smtp

## Configuration

You must let ActionMailer know that you wish to use em-smtp as your
delivery method. Either in your application's config/application.rb
file (Rails 3 or latter), or in an environment-specific config file
such as config/environments/production.rb:

    config.action_mailer.delivery_method = :em_smtp

After that, you may need to change your smtp settings.
In config/initializers/em_smtp.rb

    ActionMailer::Base.em_smtp_settings = {
      host:     "#{YOUR_SMTP_SERVER}",
      port:     25,                   # change this if needed
      domain:   "#{YOUR_SMTP_DOMAIN}",
      starttls: true                  # change to false if your smtp server didn't support SSL/TLS
      #auth: {                        # don't include this if no auth needed
      #        type:     :plain,
      #        username: "#{YOUR_USERNAME}",
      #        password: "#{YOUR_PASSWORD}"
      #      }
    }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
