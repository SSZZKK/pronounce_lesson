class MediaController < ApplicationController

    def  index
    @media = Medium.where(language: params[:language],
    category: params[:category] || 'movie')
    end
end
