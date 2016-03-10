require 'jsonapi-serializers'
class BaseSerializer
  include JSONAPI::Serializer

  def base_url
    # TODO: globalize param
    'http://localhost:3000'
  end

  def serialize_model(model, options = {})
    options[:is_collection] = false
    JSONAPI::Serializer.serialize(model, options)
  end

  def serialize_models(models, options = {})
    options[:is_collection] = true
    JSONAPI::Serializer.serialize(models, options)
  end

end