# frozen_string_literal: true
class ApplicantWillPerformNotifier < BaseNotifier
  def self.call(job_user:, owner:)
    return if ignored?(owner)

    with_locale(owner.locale) do
      JobMailer.
        applicant_will_perform_email(job_user: job_user, owner: owner).
        deliver_later
    end
  end
end
