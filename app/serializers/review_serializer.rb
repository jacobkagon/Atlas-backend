class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :user_id, :country_id, :rating, :user, :created_at, :updated_at
end
