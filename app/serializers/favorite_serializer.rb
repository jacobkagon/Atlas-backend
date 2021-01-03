class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :country_id, :user_id
  end