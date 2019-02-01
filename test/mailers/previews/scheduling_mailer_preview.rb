# Preview all emails at http://localhost:3000/rails/mailers/scheduling_mailer
class SchedulingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/scheduling_mailer/new_scheduling
  def new_scheduling
    SchedulingMailer.new_scheduling
  end

end
