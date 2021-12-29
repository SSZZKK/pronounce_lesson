class MediaController < ApplicationController

    def  index
    @media = Medium.where(language: params[:language],
    category: params[:category] || 'movie')
    end

    def admin_index
    @media = Medium.all
    @contents = Content.where(medium_id: params[:medium_id])
    end
    
    def admin_show
    end
end
