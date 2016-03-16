class Content
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :title
  field :description
  # user data planned to store in relationDB but, as rethinkDB allow atomic operations, maybe
  field :user_id
  field :content_image_url
  field :video_file_src

  belongs_to :user


  validates :title, :description, :presence => true

end
