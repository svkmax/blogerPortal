class ContentsController < ApplicationController

  def index
    render json: JSONAPI::Serializer.serialize(Content.all, is_collection: true)
  end

  def select
    render json: Content.first
  end

  def show
    render json: JSONAPI::Serializer.serialize(Content.find(params[:id]), is_collection: false)
  end

  def delete
    render json: {}
  end

  private

  def content_params
    params.require(:content).permit(:title, :description, :content_url)
  end
end
