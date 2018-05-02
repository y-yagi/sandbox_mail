module SandboxMail
  module MessageDelivery
    def deliver_later!
      deliver_later
    end

    def deliver_now!
      deliver_now
    end
  end
end

ActionMailer::MessageDelivery.prepend(SandboxMail::MessageDelivery)
