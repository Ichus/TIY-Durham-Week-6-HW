class EmailConfirmationController < ApplicationController
  def welcome
    confirm = EmailConfirmation.find_by_token(params[:id])
    @user = User.find(confirm.user_id)
    confirm.destroy
  end
end
