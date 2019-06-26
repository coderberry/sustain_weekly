class User < ApplicationRecord
  # extends ...................................................................
  # includes ..................................................................
  # relationships .............................................................

  # validations ...............................................................
  validates :email, presence: true
  validates :uid, presence: true
  validates :username, presence: true

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config (i.e. accepts_nested_attribute_for etc...) ..............

  # class methods .............................................................
  class << self
    def find_or_create_from_auth_hash(auth_hash)
      user = User.find_by(uid: auth_hash["uid"])
      user ||= User.create!(
        username: auth_hash["info"]["nickname"],
        uid: auth_hash["uid"],
        email: auth_hash["info"]["email"],
        name: auth_hash["info"]["name"],
        avatar_url: auth_hash["info"]["image"]
      )
      user
    end
  end

  # public instance methods ...................................................

  def subscribed?
    newsletter_status == "subscribed"
  end

  # protected instance methods ................................................

  # private instance methods ..................................................
end
