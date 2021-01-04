class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :user_id, :country_id, :rating
end
