class Content
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps


  field :title, type: String
  field :description, type: Text
  field :content_image_url, type: String
  field :video_file_src, type: String

  belongs_to :user, index: true


  validates :title, :description, :presence => true


  def self.create obj_hash
    content = super obj_hash
    user = User.find(content.user_id)
    user.update(contents: user.contents + [content.id]) if content.valid?
    content
  end

  def save
    if super
      user.update(contents: user.contents + [id])
    end
  end

  # TODO
  def delete
  #     to be developed
  end



end
