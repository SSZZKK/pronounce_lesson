class MediaController < ApplicationController

    def  index
    @media = Medium.where(language: params[:language],
    category: params[:category] || 'movie')
    end
    
    def show
    @medium = Medium.find(params[:id])
    @contents = @medium.contents
    end
    
    
    
    def admin_index
    @q = Medium.ransack(params[:q])
    @media = @q.result(distinct: true)
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
