class MediaController < ApplicationController

    def  index
    @q = Medium.ransack(params[:q])
    @media = Medium.all
    @medium = Medium.new
    # @media = Media.page(params[:page]).per(20)
    end
    
    
end
