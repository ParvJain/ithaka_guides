class PlaceSerializer < ActiveModel::Serializer
  attributes :name, :description, :place_type, :price, :currency
end
