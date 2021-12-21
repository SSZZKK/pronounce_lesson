class ContentsController < ApplicationController

  def index
    @contents = Content.all
  end
    
  def search
    @search = Content.ransack(params[:q])
    @results = @search.result
  end
  
  def new
    @content = Content.new
  end

  def create
    @content = current_admin.contents.new(content_params)

    if @content.save
      redirect_to contents_path, success: '投稿しました'
    else
      flash.now[:danger] = "投稿失敗"
      render :news
    end
  end
  
  private
  def content_params
    params.require(:content).permit(:video, :description, :language)
  end
end