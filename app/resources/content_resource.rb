class ContentResource < JSONAPI::Resource
  attributes :title, :description, :id


  def attributes
    {title: title, description: description}
  end
end