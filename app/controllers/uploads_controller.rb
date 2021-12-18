class UploadsController < ApplicationController
  def new
  @upload = Upload.new
  end

  def create
    @upload = current_admin.uploaeds.new(upload_params)

    if @upload.save
      redirect_to uploads_path, success: '投稿しました'
    else
      flash.now[:danger] = "投稿できませんでした"
      render :new
    end
  end

  private
  def upload_params
    params.require(:upload).permit(:content, :description)
  end
end