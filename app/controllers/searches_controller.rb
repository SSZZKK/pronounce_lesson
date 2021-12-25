class SearchesController < ApplicationController
  
  before_action :set_search

  def set_search
    @search = Content.ransack(params[:q])
    @search_contents = @search.result
  end
    
  def index
    @contents = Content.search(params[:search])
    @search = params[:search]
  end
  
  def detail_search
    @search_content = Content.ransack(params[:q]) 
    @contents = @search_content.result.page(params[:page])
  end
  
  

private


  def set_ransack
    @q = Content.ransack(params[:q])
  end

end