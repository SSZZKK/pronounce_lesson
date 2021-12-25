class ApplicationController < ActionController::Base
    before_action :set_search

    def set_search
      @search = Content.ransack(params[:q])
      @search_contents = @search.result
    end
    
    def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
    end
end