class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(admin_id: params[:session][:admin_id])
    if admin && admin.authenticate(params[:session][:password])
      log_in admin
      redirect_to new_content_path, success: '管理画面に入りました'
    else
      flash.now[:danger] = 'ログイン失敗'
      render :new
    end
  end
  
  def destroy
    log_out
    redirect_to root_url, info: 'ログアウト'
  end

  private
  def log_in(admin)
    session[:admin_id] = admin.id
  end
  
  def log_out
    session.delete(:admin_id)
    @current_admin = nil
  end
end