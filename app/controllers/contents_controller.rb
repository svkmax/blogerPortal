class ContentsController < ApplicationController

  def index
    content = Content.new
    content.save
    render json: ErrorSerializer.serialize_json(content.errors), status: 422
    # render json: json_error(422)
    # render json: json_collection(Content.all)
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
    render json: content.save ? json_object(content) : json_error(422)
  end

  private

  def content_params
    params.require(:content).permit(:title, :description, :content_url)
  end
end
