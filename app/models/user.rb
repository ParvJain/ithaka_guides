class User < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :email, :password

    has_secure_password

    validates :email, presence: true
    validates :password, presence: true, :on => :create
end
