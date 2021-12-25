class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def show
    @admins = Admin.all
  end
  
  def search
    @results = @q.result
  end

  def set_q
    @q = User.ransack(params[:q])
  end
  
  private

  def set_q
  @q = Admin.ransack(params[:q])
  end
end
