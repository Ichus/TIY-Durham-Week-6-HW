class AccountMailer < ActionMailer::Base
  default from: "WebDevStudent@fake.com"

  def password_reset(reset_session)
    @user = reset_session.user
    @url = password_reset_url(id: reset_session.token)

    mail to: @user.email, subject: "chat_local, Reset your Password"
  end
end
