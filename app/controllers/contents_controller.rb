class ContentsController < ApplicationController
  
  before_action :set_q, only: [:index, :search]

  def index
    @contents = Content.all
    @content = Content.new
   end
    
  def search
    @results = @q.result(distinct: true)
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
  
  def set_q
      @q = Post.ransack(params[:q])
  end
end