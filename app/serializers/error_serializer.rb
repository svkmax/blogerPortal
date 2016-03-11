# JSON standard error response
# HTTP/1.1 422 Unprocessable Entity
# Content-Type: application/vnd.api+json
#
# {
#     "errors": [
#         {
#             "status": "422",
#             "source": { "pointer": "/data/attributes/first-name" },
#             "title":  "Invalid Attribute",
#             "detail": "First name must contain at least three characters."
#         }
#     ]
# }
module ErrorSerializer

  def ErrorSerializer.serialize_json(errors, options={})
    return if errors.nil?

    json = {}
    new_hash = errors.to_hash(true).map do |k, v|
      v.map do |msg|
        { title: k, detail: msg, source: {}, status: options[:status] }
      end
    end.flatten
    json[:errors] = new_hash
    json
  end

end