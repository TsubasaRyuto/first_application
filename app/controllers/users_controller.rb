class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to root_path, notice: '更新しました'
    else
      redirect_to :edit_user
    end
  end

  private

  def user_params
    params.require(:user).permit(:graduating_class_id, :gender, :birthplace, :industry, :company, :useful_things, :note)
  end
end
