class MediaController < ApplicationController

    def  index
    @media = Medium.where(language: params[:language],
    category: params[:category] || 'movie')
    end
    
    def show
    @contents = Content.find(description: params[:description])
    end
    #1231
    
    
    def admin_index
    @media = Medium.all
    @contents = Content.where(medium_id: params[:medium_id])
    end
    
    def admin_show
    end
    
    # before_action :set_search#1231
    
    # def set_search#1231
    # @search = Media.ransack(params[:q])
    # @search_media = @search.result
    # end
end
