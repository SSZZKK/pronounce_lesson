class MediaController < ApplicationController

    def  index
    @media = Medium.where(language: params[:language],
    category: params[:category] || 'movie')
    
    # @media = Media.page(params[:page]).per(20)
    end
    
    
end
