class VideosController < ApplicationController
  def index
    render json: Video.all
  end

  def create

  end
end
