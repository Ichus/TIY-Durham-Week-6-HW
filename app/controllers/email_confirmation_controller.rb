class EmailConfirmationController < ApplicationController
  def welcome
    confirm = EmailConfirmation.find_by_token(params[:id])
    @user = User.find(confirm.user_id)
    confirm.destroy
    Sleep 5.0
    redirect_to users_path(@user.id)
  end
end
