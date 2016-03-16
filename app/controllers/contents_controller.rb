class ContentsController < ApplicationController

  def index
    render json: json_collection(Content.all)
  end

  def select
    render json: Content.first
  end

  def show
    render json: json_object(Content.find(params[:id]))
  end

  def delete
    render json: {}
  end

  def create
    content = Content.new(content_params)
    render json: content.save ? json_object(content) : ErrorSerializer.serialize_json(content.errors)
  end

  private

  def content_params
    params.require(:content).permit(:title, :description, :content_url)
  end
end
