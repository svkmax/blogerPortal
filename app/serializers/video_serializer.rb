class VideoSerializer < ActiveModel::Serializer
  attributes :title, :preview_image_link, :preview_image_file_name, :author_name, :description, :id

  def attributes
    {id: id, name: "Default", author: "default"}
  end

end