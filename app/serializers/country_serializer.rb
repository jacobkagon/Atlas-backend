class CountrySerializer < ActiveModel::Serializer
  attributes :id, :country_code, :favorites
end
