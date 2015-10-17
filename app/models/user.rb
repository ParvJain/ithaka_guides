class User < ActiveRecord::Base
    validates :email, presence: true

    attr_protected :hashed_password
end
