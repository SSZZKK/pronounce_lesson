class ContentsController < ApplicationController
  def index
    @content = Content.all
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
      render :new
    end
  end

  private
  def content_params
    params.require(:content).permit(:video, :description)
  end
end