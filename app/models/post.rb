class Post
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  belongs_to :user
  belongs_to :content

  field :text, type: Text


end
