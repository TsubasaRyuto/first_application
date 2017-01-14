class UsersController < ApplicationController

  def index
    @users = User.all
    if params[:graduating_class_id].present?
      @graduating_class = GraduatingClass.find(params[:graduating_class_id])
      @graduating_class_users = @users.get_by_graduating_class params[:graduating_class_id]
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user, notice: '更新しました'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:graduating_class_id, :gender, :birthplace, :industry, :company, :useful_things, :note)
  end
end
