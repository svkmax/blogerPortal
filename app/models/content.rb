class Content
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :title, type: String
  field :description, type: Text
  field :content_image_url, type: String
  field :video_file_src, type: String

  belongs_to :user, index: true


  validates :title, :description, :presence => true

end
