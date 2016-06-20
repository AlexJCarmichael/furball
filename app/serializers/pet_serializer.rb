class PetSerializer < ActiveModel::Serializer
  attributes :name, :desc, :category, :breed, :weight
  belongs_to :user
end
