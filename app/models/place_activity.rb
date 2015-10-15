class PlaceActivity < ActiveRecord::Base
    belongs_to :place
    belongs_to :activity
end
