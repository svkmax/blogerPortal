class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  before_action :add_headers
  include ErrorSerializer


  # def videos
  #   render json: [{id: 1, name: 'Piter Parker', author: 'Troll'}]
  # end

  def add_headers
    response.headers['Access-Control-Allow-Origin'] = request.headers['Origin'] || '*'
    response.headers['Access-Control-Allow-Credentials'] = 'true'
  end

  def json_object(object)
    JSONAPI::Serializer.serialize(object, is_collection: false)
  end

  def json_collection collection
    JSONAPI::Serializer.serialize(collection, is_collection: true)
  end

  def json_error(status)
    JSONAPI::Serializer.serialize(AppException.new(status), is_collection: false)
  end

end
