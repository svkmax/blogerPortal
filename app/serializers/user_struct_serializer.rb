class UserStructSerializer < BaseSerializer
  attributes :id, :contents

  def type
    "users"
  end
end