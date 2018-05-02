require "rails"

module SandboxMail
  class Railtie < ::Rails::Railtie
    console do |app|
      if app.sandbox?
        require "action_mailer"
        ActionMailer::Base.perform_deliveries = false
        require "sandbox_mail/message_delivery"
      end
    end
  end
end
