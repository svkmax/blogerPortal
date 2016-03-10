class Content
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :title
  field :description
  field :user_id
  field :content_image_url


  def self.order(a)
    order_by(a)
  end

end
