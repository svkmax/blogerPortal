class ContentSerializer < BaseSerializer
  include JSONAPI::Serializer

  attributes :title, :description


end