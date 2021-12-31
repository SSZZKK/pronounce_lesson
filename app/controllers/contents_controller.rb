class ContentsController < ApplicationController

    def index
      # @q = Content.ransack(params[:q])
      @contents = Content.all
      # @content = Contents.page(params[:page]).per(20)
    end
    
    def new
      @medium = Medium.find(params[:medium_id])
      @content = @medium.contents.build
    end
    
    def show
      @content = Content.find(params[:id])
    end
  
    def create
      @content = current_admin.contents.new(content_params)
      if @content.save!
        redirect_to media_admin_index_path(medium_id: params[:content][:medium_id]), success: '投稿しました'
      else
        flash.now[:danger] = "投稿失敗"
        @medium = Medium.find(params[:content][:medium_id])
        render :new
      end
    end
  
    private
    def content_params
      params.require(:content).permit(:video, :description, :language, :medium_id)
    end
end