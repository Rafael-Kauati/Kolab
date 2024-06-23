class SinginController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(registration_params)
    if @user.save
      login(@user)  # Assuming you have a login method (explained later)
      redirect_to root_path, notice: "Successfully registered!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def registration_params
    params.require(:user).permit(:email, :password, password_confirmation: true)
  end
end
