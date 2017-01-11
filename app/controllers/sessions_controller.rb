class SessionsController < ApplicationController
  def create
    user = User.find_orcreate_from_auth_hash(request.env['omniauth.auth'])
    session[:user_id] = user.id

    if user.useful_things? || user.note?
      redirect_to root_path, notice: 'ログインしました'
    else
      redirect_to edit_user_path(user), notice: 'ログインしました'
    end
  end

  def destroy
    logout if logged_in?
    redirect_to  root_path, notice: 'ログアウトしました'
  end

  def auth_failure
    render :status => 500
  end
end
