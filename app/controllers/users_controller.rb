class UsersController < ApplicationController

  def index
    render json: json_collection(User.with_contents)
  end

  def show
    render json; json_object(User.find(params[:id]).with_contents)
  end
end
