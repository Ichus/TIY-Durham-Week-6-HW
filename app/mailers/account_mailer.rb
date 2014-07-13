class AccountMailer < ActionMailer::Base
  default from: "WebDevStudent@fake.com"

  def password_reset(reset)
    @user = reset.user
    @url = password_reset_url(id: reset.token)

    mail to: @user.email, subject: "chat_local, Reset your Password"
  end

  def email_confirmation(user, confirmation)
    @user = user
    @url = email_confirmation_url(id: confirmation.token)

    mail to: @user.email, subject: "chat_local, Welcome!"
  end
end
