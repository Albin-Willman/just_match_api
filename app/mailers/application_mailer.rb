# frozen_string_literal: true
class ApplicationMailer < ActionMailer::Base
  DEFAULT_EMAIL = 'Just Arrived <support@justarrived.se>'
  default from: DEFAULT_EMAIL
end
