require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  def setup
    @user = User.last
  end
  test "welcome" do
    mail = UserMailer.with(user: User.last).welcome
    assert_equal "Welcome", mail.subject
    assert_equal [@user.email], mail.to
    assert_equal ["no-reply@wallakek.com"], mail.from
    assert_match "Hey #{@user.username}, bienvenid@ a WALLAKEK.", mail.body.encoded
  end

end
