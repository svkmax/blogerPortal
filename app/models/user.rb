class User

  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :contents, type: Array

  def with_contents
    User.new NoBrainer.run { |r| r.table('users').get(id).merge {
        |user| {:contents => r.table("contents").get_all(user['id'], 'index' => 'user_id').coerce_to('array') }
      }
    }
  end

  def self.with_contents
    cursor = NoBrainer.run {|r| r.table('users').merge { |user|
        {:contents => r.table("contents").get_all(user['id'], :index => 'user_id').coerce_to('array')}
      }
    }.to_enum
    users = []
    loop do
      users.push User.new cursor.next
    end
    users
  end

end