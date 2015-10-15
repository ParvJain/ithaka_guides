class Activity < ActiveRecord::Base
    has_many :place_activities
    has_many :places, through: :place_activities

    validates :name, uniqueness: true, presence: true, length: { maximum: 15 }
end
