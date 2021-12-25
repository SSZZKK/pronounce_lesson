class MediaController < ApplicationController

    def  index
    @q = Medium.ransack(params[:q])
    @mediums = Medium.all
    @contents = Content.all
    @contents = Content.page(params[:page]).per(20)
    end
end
