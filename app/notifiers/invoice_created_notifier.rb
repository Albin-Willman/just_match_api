# frozen_string_literal: true
class InvoiceCreatedNotifier < BaseNotifier
  def self.call(job:, user:)
    owner = job.owner
    return if ignored?(user)

    with_locale(user.locale) do
      InvoiceMailer.
        invoice_created_email(user: user, job: job, owner: owner).
        deliver_later
    end
  end
end
