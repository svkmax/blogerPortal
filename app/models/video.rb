class Video < ActiveRecord::Base
  # deb fields :
  # t.string :preview_image_link
  # t.string :preview_image_file_name
  # t.string :author_name
  # t.string :description

  include ActiveModel::Serializers::JSON

  attr_accessor :title, :preview_image_link, :preview_image_file_name, :author_name, :description

  # def attributes
  #   {title: nil, preview_image_link: preview_image_link, description: description}
  # end

end
