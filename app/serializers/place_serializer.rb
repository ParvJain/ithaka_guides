class PlaceSerializer < ActiveModel::Serializer

    def parent
        object.parent.try(:name)
    end

    def distance_from
        object.source.try(:name)
    end

    attributes :id, :name, :description, :place_type, :price, :currency, :distance, :parent, :distance_from
end
