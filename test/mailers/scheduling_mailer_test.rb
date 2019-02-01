require 'test_helper'

class SchedulingMailerTest < ActionMailer::TestCase
  test "new_scheduling" do
    mail = SchedulingMailer.new_scheduling
    assert_equal "New scheduling", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
