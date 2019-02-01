class SchedulingJob < ApplicationJob
  queue_as :emails

  def perform(scheduling, title)
    SchedulingMailer.new_scheduling(scheduling, title).deliver_now
  end
end
