class SchedulingMailer < ApplicationMailer

  def new_scheduling(scheduling, title)
    @scheduling = scheduling
    mail to: @scheduling.client.email, subject: title
  end
end